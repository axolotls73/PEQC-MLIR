#!/bin/sh
# flatten-image.sh — collapse all layers of the package's image into a single
# layer via docker export | docker import, preserving CMD/ENTRYPOINT/WORKDIR/
# USER/ENV. Image tag is read from image-name.txt next to this script.
#
# Caveats: HEALTHCHECK is not preserved; layer sharing with sibling images
# is lost; `docker history` will show one line afterward.

set -eu

case "${1:-}" in
    -h|--help)
        cat >&2 <<EOF
usage: $0
  Collapse all layers of the image into a single layer via
  docker export | docker import. Preserves CMD/ENTRYPOINT/WORKDIR/USER/ENV.
  Image tag is read from image-name.txt next to this script.
  No options.
EOF
        exit 0 ;;
esac

SCRIPTDIR=$(cd "$(dirname "$0")" && pwd)
IMG=$(head -1 "$SCRIPTDIR/image-name.txt" | tr -d '[:space:]')

if ! docker image inspect "$IMG" >/dev/null 2>&1; then
    echo "error: image '$IMG' not found locally. Run ./build.sh first." >&2
    exit 1
fi

CTR=$(docker create "$IMG")
trap 'docker rm "$CTR" >/dev/null 2>&1 || true' EXIT INT TERM

# Build the --change arg list via POSIX positional params. Each --change
# directive stays as its OWN $@ element, so JSON arrays / values with spaces
# survive intact. This is the robust replacement for an eval-based pipeline,
# which broke on newlines and quotes in the format-string output.
set --

WDIR=$(docker inspect "$IMG" --format '{{.Config.WorkingDir}}')
[ -n "$WDIR" ] && set -- "$@" --change "WORKDIR $WDIR"

USR=$(docker inspect "$IMG" --format '{{.Config.User}}')
[ -n "$USR" ] && set -- "$@" --change "USER $USR"

ENT=$(docker inspect "$IMG" --format '{{json .Config.Entrypoint}}')
[ "$ENT" != "null" ] && set -- "$@" --change "ENTRYPOINT $ENT"

CMD=$(docker inspect "$IMG" --format '{{json .Config.Cmd}}')
[ "$CMD" != "null" ] && set -- "$@" --change "CMD $CMD"

# ENV: one entry per line; each line is a KEY=value string that may contain
# spaces inside `value`, so we read with IFS= -r to keep it intact.
while IFS= read -r env; do
    [ -n "$env" ] && set -- "$@" --change "ENV $env"
done <<EOF
$(docker inspect "$IMG" --format '{{range .Config.Env}}{{println .}}{{end}}')
EOF

docker export "$CTR" | docker import "$@" - "$IMG"
docker rm "$CTR" >/dev/null
trap - EXIT INT TERM
docker image prune -f

printf '\nTo also delete the pre-image-to-volume backup tag and reclaim its layers:\n    docker rmi %s:before-image-to-volume\n    docker system prune\n' "${IMG%%:*}"
