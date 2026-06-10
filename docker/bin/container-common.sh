# container-common.sh — shared helpers, sourced by claude-box,
# claude-box-interactive-console, and run-container-interactive.
#
# 1. On source: parses pre-positional flags. Sets CLI_CONFIG_FILE /
#    CLI_MOUNT_FILE (and MOUNTS_VOLUME_FILENAME) when the caller passes
#    --config-file <path> / --mount-file <path>. The loop stops at the
#    first non-flag arg, leaving $1, $2, ... as the caller's original
#    positional args.
# 2. Defines load_config_file(): reads CLI_CONFIG_FILE one line at a
#    time, evaluates each KEY=value (so values can use shell expansion),
#    skipping lines whose KEY is already set non-empty in the current
#    shell. Caller invokes it explicitly to control ordering.

## color management.
black_color="\033[0;31m";
white_color="\033[0;37m";
red_color="\033[0;31m";
orange_color="\033[0;33m";
green_color="\033[0;32m";
purple_color="\033[0;35m";
no_color="\033[0m";
echo_cmd="/bin/echo -e";


parse_command_options() {
while [ $# -gt 0 ]; do
    case "$1" in
        --config-file)
            shift
            if [ $# -eq 0 ]; then
                echo "error: --config-file requires a filename" >&2
                exit 1
            fi
            CLI_CONFIG_FILE=$1
            shift
            ;;
        --mount-file)
            shift
            if [ $# -eq 0 ]; then
                echo "error: --mount-file requires a filename" >&2
                exit 1
            fi
            CLI_MOUNT_FILE=$1
            MOUNTS_VOLUME_FILENAME=$CLI_MOUNT_FILE
            shift
            ;;
        *)
            break
            ;;
    esac
done
}

load_config_file() {
    if [ -f "$CLI_CONFIG_FILE" ]; then
        while IFS= read -r _cfg_line; do
            ## Skip blank/whitespace-only lines and comments.
            toskip=`echo "$_cfg_line" | grep -E "^[[:space:]]*(#|$)"`
            if [ ! -z "$toskip" ]; then continue; fi
            _cfg_var=`echo "$_cfg_line" | cut -d '=' -f 1`
            eval "_cfg_current=\"\$$_cfg_var\""
            if [ -n "$_cfg_current" ]; then
                continue
            fi
            eval "$_cfg_line"
        done < "$CLI_CONFIG_FILE"
    fi
}

load_mount_volumes_list() {
    MOUNT_VOLUMES_LIST=""
    if ! [ -f "$MOUNTS_VOLUME_FILENAME" ]; then return; fi;
    while read n; do
        n=`eval echo "$n"`
        ## Skip blank/whitespace-only lines and comments.
        toskip=`echo "$n" | grep -E "^([[:space:]])*(#|$)"`
        if [ ! -z "$toskip" ]; then continue; fi
        ## Parse type= and source=/src= regardless of position in the line.
        type_val=`echo "$n" | tr ',' '\n' | grep -E '^[[:space:]]*type='        | head -1 | cut -d '=' -f 2`
        src_val=`echo "$n"  | tr ',' '\n' | grep -E '^[[:space:]]*(source|src)=' | head -1 | cut -d '=' -f 2`
        if [ "$type_val" = "bind" ]; then
            ## Bind mount: include only if the host path exists.
            if [ -e "$src_val" ]; then
                MOUNT_VOLUMES_LIST="$MOUNT_VOLUMES_LIST --mount $n"
            fi
        else
            ## Volume (default): include only if the named volume exists.
            v=`$SUDO_CMD docker volume inspect "$src_val" 2>/dev/null`
            if [ $? -eq 0 ]; then
                MOUNT_VOLUMES_LIST="$MOUNT_VOLUMES_LIST --mount $n"
            fi
        fi
    done < "$MOUNTS_VOLUME_FILENAME"
}

configure_xauth_display() {

## Must set the global to yes.    
if [ -z "USE_REMOTE_GRAPHICAL_DISPLAY" ]; then return; fi;
    
## Deal with xauthority.
echo "[INFO] Collecting xauth list info. May take tens of seconds.";
did=`echo "$DISPLAY" | cut -d ':' -f 2 | cut -d '.' -f 1`;
hostn=`hostname`;
xauthlist=`xauth list`;
cook="";
if [ -z "$USE_REMOTE_HOST" ]; then
    cook=`echo "$xauthlist" | grep "^$hostn/unix:$did" | awk '{ print $3 }'`;
fi;
## For remote hosts:
if [ -z "$cook" ]; then
    ### Note: this approach expects the sshd configured with X11UseLocalHost=no
    ## Attempt to find a hostname.
    addr=`hostname -i`;
    #hostn2=`getent hosts $addr | sed -e 's/  //g' | cut -d ' ' -f 2`;
    hostn2=`hostname --long`;
    cook=`echo "$xauthlist" | grep "^$hostn2:$did" | awk '{ print $3 }'`;
    #external_ip=` ip route get 8.8.8.8|sed -e 's/.*src //g' | cut -d ' ' -f 1 | head -n 1`;
    external_ip=`curl -s ifconfig.me`;
    external_resolvname=`nslookup $external_ip | sed -e 's/.*name = \(.*\)\.$/\1/g' | head -n 1`;
    DISPLAY="$external_ip:$did.0";
    v=`echo "$xauthlist" | grep "$external_resolvname:$did" | grep "$cook"`;
    if ! [ -z "$cook" ] && [ -z "$v" ]; then
	echo "[INFO] Adding xauth cookie: xauth add $external_ip:$did MIT-MAGIC-COOKIE-1 $cook";
	xauth add $external_ip:$did MIT-MAGIC-COOKIE-1 $cook;
    fi;
fi;
if [ -z "$cook" ]; then
    cook=`echo "$xauthlist" | grep "^$hostn/unix:$did" | awk '{ print $3 }'`;
fi;
if [ -z "$cook" ]; then
    $echo_cmd "$orange_color[WARNING] No cookie was detected, X11 apps will fail.$no_color";
fi;
v=`echo "$xauthlist" | grep "^$CONTAINER_HOSTNAME/unix:$did" | grep "$cook"`;
if ! [ -z "$cook" ] && [ -z "$v" ]; then
	echo "[INFO] xauth add $CONTAINER_HOSTNAME/unix:$did MIT-MAGIC-COOKIE-1 $cook";
	xauth add $CONTAINER_HOSTNAME/unix:$did MIT-MAGIC-COOKIE-1 $cook;
#	xauth add $CONTAINER_HOSTNAME:$did MIT-MAGIC-COOKIE-1 $cook;
fi;
}    
