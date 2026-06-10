#!/bin/sh
# image-to-volume.sh — extract a directory from the image into a docker volume,
# remove it from the image's filesystem (commit a new layer with whiteouts), and
# auto-add the volume mount to every launcher shipped in this package.
#
# Usage:
#   ./image-to-volume.sh [--append] <src-path> <volume-name> [<mount-point>]
#
# <src-path>    Absolute path inside the image to move into the volume.
# <volume-name> Docker volume name (literal — no auto-interpolation; embed
#               whatever environment-specific suffix you want, e.g. -$USER).
# <mount-point> Path at which the volume will be mounted at runtime in every
#               launcher. Default: <src-path> (i.e. the runtime mount swaps
#               just the moved directory). Pass a broader path explicitly to
#               shadow a wider subtree.
# --append      When the volume already exists, append to it rather than abort.
#
# Image tag is read from image-name.txt sitting next to this script (one tag
# per line — first line wins). ship-package.sh writes it at package time.
#
# Worked example:
#   ./image-to-volume.sh /opt/mlir/amd/2026/mlir-air mlir-tools-pouchet /opt/mlir/amd
#     -> SUBPATH = /2026/mlir-air
#     -> helper runs: cp -a /opt/mlir/amd/2026/mlir-air /futurevolume/2026/mlir-air
#                  && rm -rf /opt/mlir/amd
#     -> appends `type=volume,source=mlir-tools-pouchet,target=/opt/mlir/amd`
#        to every bin/mounts/mounts.*.txt in the package.
#
# After: each launcher mounts the volume at /opt/mlir/amd at runtime, so
# /opt/mlir/amd/2026/mlir-air resolves to the volume's 2026/mlir-air content.
#
# Note: docker commit retains the original lower layers (their bytes stay on
# disk, just hidden by whiteouts). This script does NOT reclaim those bytes;
# you'd need a full-image rebuild (export|import) for that.

set -eu

usage() {
    cat >&2 <<EOF
usage: $0 [--append] <src-path> <volume-name> [<mount-point>]

  <src-path>    absolute path inside the image to extract
  <volume-name> docker volume name (literal)
  <mount-point> runtime mount path of the volume (default: <src-path>)
  --append      append to an existing volume instead of aborting

Image tag is read from image-name.txt next to this script.
EOF
    exit 1
}

APPEND=0
case "${1:-}" in
    --append)   APPEND=1; shift ;;
    -h|--help)  usage ;;
esac

[ $# -ge 2 ] || usage
SRC="$1"
VOLUME="$2"
MOUNTPOINT="${3:-$SRC}"

# Validation: absolute paths
case "$SRC" in
    /*) ;;
    *)  echo "error: src-path must be absolute (got '$SRC')" >&2; exit 1 ;;
esac
case "$MOUNTPOINT" in
    /*) ;;
    *)  echo "error: mount-point must be absolute (got '$MOUNTPOINT')" >&2; exit 1 ;;
esac

# SUBPATH = SRC with MOUNTPOINT prefix stripped. Empty when SRC == MOUNTPOINT,
# otherwise starts with /.
case "$SRC" in
    "$MOUNTPOINT")   SUBPATH="" ;;
    "$MOUNTPOINT"/*) SUBPATH="${SRC#"$MOUNTPOINT"}" ;;
    *)
        echo "error: src-path '$SRC' is not under mount-point '$MOUNTPOINT'" >&2
        exit 1 ;;
esac

# Image tag from sidecar
SCRIPTDIR=$(cd "$(dirname "$0")" && pwd)
SIDECAR="$SCRIPTDIR/image-name.txt"
if [ ! -f "$SIDECAR" ]; then
    echo "error: image-name.txt not found at $SIDECAR" >&2
    exit 1
fi
IMAGE=$(head -1 "$SIDECAR" | tr -d '[:space:]')
if [ -z "$IMAGE" ]; then
    echo "error: image-name.txt is empty" >&2
    exit 1
fi

# Confirm image is present locally
if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
    echo "error: image '$IMAGE' not found locally. Run ./build.sh first." >&2
    exit 1
fi

# Handle volume existence
if docker volume inspect "$VOLUME" >/dev/null 2>&1; then
    if [ "$APPEND" != "1" ]; then
        echo "error: volume '$VOLUME' already exists. Pass --append to add to it." >&2
        exit 1
    fi
    echo ">>> volume '$VOLUME' already exists — appending."
else
    docker volume create "$VOLUME" >/dev/null
    echo ">>> created volume '$VOLUME'."
fi

# What UID:GID will phase 2's helper run as? We need to chown the volume root
# to that identity in phase 1, otherwise cp -a's timestamp/mode preservation
# fails (utimes/chmod on root-owned paths needs ownership).
DEFAULT_UID_GID=$(docker run --rm "$IMAGE" sh -c 'echo "$(id -u):$(id -g)"' 2>/dev/null)
DEFAULT_UID_GID="${DEFAULT_UID_GID:-0:0}"

# Phase 1: chmod 777 + chown /futurevolume (one-shot root throwaway). Docker
# creates a fresh volume's mount-path as root:root 755 — phase 2 needs to both
# write into it AND own it for cp -a. The 777 mode is what the user wanted for
# runtime accessibility; the chown is the fix for the cp -a utime/chmod failure.
echo ">>> chmod 777 + chown $DEFAULT_UID_GID /futurevolume (one-shot as root)"
docker run --rm --user 0:0 -v "$VOLUME":/futurevolume "$IMAGE" \
    sh -c "chmod 777 /futurevolume && chown $DEFAULT_UID_GID /futurevolume"

# Phase 2: copy SRC's contents into the volume AS THE IMAGE'S DEFAULT USER.
# Trailing /. on the source means "the contents, not the directory itself" —
# uniform handling of SRC == MOUNTPOINT (SUBPATH="") and SRC under MOUNTPOINT
# (SUBPATH="/some/leaf"). Trailing chmod restores 777 on the volume root since
# cp -a will have applied SRC's mode to it.
echo ">>> copying $SRC into the volume (as image's default user)…"
docker run --rm -v "$VOLUME":/futurevolume "$IMAGE" \
    sh -c "set -e; mkdir -p \"/futurevolume$SUBPATH\" && cp -a \"$SRC\"/. \"/futurevolume$SUBPATH/\" && chmod 777 /futurevolume"

# Tag the current image as a backup before we modify it. If anything goes
# wrong (or the user just wants to undo) one command reverts the image:
#     docker tag <backup-tag> <image>
# Each i2v run overwrites the backup, so this always points at "the state
# immediately before the most recent i2v".
BACKUP_TAG="${IMAGE%%:*}:before-image-to-volume"
echo ">>> tagging current $IMAGE as $BACKUP_TAG"
echo "    (revert with: docker tag $BACKUP_TAG $IMAGE)"
docker tag "$IMAGE" "$BACKUP_TAG"

# Phase 3: rm MOUNTPOINT from image filesystem + commit. Needs root because
# MOUNTPOINT (e.g. /opt) is root-owned.
#
# Critical: `docker commit` would otherwise bake the helper's command
# (rm -rf "$MOUNTPOINT") as the new image's Cmd AND drop the image's User
# directive (so subsequent runs default to root, sourcing /root/.bashrc instead
# of /home/$user/.bashrc). We capture the original Cmd/Entrypoint/User/
# WorkingDir BEFORE running the helper, then restore them via --change.
ORIG_CMD=$(docker inspect "$IMAGE" --format '{{json .Config.Cmd}}')
ORIG_ENT=$(docker inspect "$IMAGE" --format '{{json .Config.Entrypoint}}')
ORIG_USER=$(docker inspect "$IMAGE" --format '{{.Config.User}}')
ORIG_WDIR=$(docker inspect "$IMAGE" --format '{{.Config.WorkingDir}}')

echo ">>> removing $MOUNTPOINT from image filesystem; committing $IMAGE…"
CTR=$(docker run -d --user 0:0 "$IMAGE" rm -rf "$MOUNTPOINT")
EXIT_CODE=$(docker wait "$CTR")
docker logs "$CTR" >&2 || true
if [ "$EXIT_CODE" != "0" ]; then
    echo "error: rm-and-commit container exited $EXIT_CODE — image NOT committed (volume already populated)." >&2
    docker rm -f "$CTR" >/dev/null 2>&1 || true
    exit "$EXIT_CODE"
fi

# Build --change args via positional params so JSON arrays survive shell parsing.
set --
[ "$ORIG_CMD"  != "null" ] && set -- "$@" --change "CMD $ORIG_CMD"
[ "$ORIG_ENT"  != "null" ] && set -- "$@" --change "ENTRYPOINT $ORIG_ENT"
[ -n "$ORIG_USER" ]        && set -- "$@" --change "USER $ORIG_USER"
[ -n "$ORIG_WDIR" ]        && set -- "$@" --change "WORKDIR $ORIG_WDIR"
docker commit "$@" "$CTR" "$IMAGE" >/dev/null
docker rm "$CTR" >/dev/null
echo ">>> committed $IMAGE (note: lower-layer bytes are now hidden but still on disk)."

# Append the volume mount line to every launcher's mounts file.
MOUNT_LINE="type=volume,source=$VOLUME,target=$MOUNTPOINT"
ADDED=0
SKIPPED=0
for mf in "$SCRIPTDIR"/../bin/mounts/mounts.*.txt; do
    [ -f "$mf" ] || continue
    if grep -qxF "$MOUNT_LINE" "$mf"; then
        SKIPPED=$((SKIPPED + 1))
    else
        echo "$MOUNT_LINE" >> "$mf"
        ADDED=$((ADDED + 1))
    fi
done
echo ">>> mount line added to $ADDED launcher(s), already present in $SKIPPED."

echo ">>> done. Recipients running any launcher in this package now auto-mount '$VOLUME' at '$MOUNTPOINT'."
