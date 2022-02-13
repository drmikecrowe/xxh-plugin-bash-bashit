set -x
CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
plugin_name="$(basename $(dirname $(dirname ${BASH_SOURCE[0]})))"
BASH_IT="$CURR_DIR/.bash_it"
set +x

source $BASH_IT/personal-startup.sh
