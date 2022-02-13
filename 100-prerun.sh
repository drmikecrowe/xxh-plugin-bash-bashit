CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
plugin_name="$(basename $(dirname $(dirname ${BASH_SOURCE[0]})))"
BASH_IT="$CURR_DIR/.bash_it"
LOGFILE=/tmp/$plugin_name.log

if [[ $XDG_CACHE_HOME ]]; then
  done_file=$XDG_CACHE_HOME/${plugin_name}-done
else
  done_file=$XXH_HOME/.${plugin_name}-done
fi

if [[ ! -f $done_file ]]; then
    set -e

    cd $CURR_DIR

    GH_USER=drmikecrowe
    GH_REPO=bash-it
    GH_BRANCH=master

    if [[ $XXH_VERBOSE == '1' || $XXH_VERBOSE == '2' ]]; then
        echo "${plugin_name}: installing ${GH_USER}/${GH_REPO}"
    fi
    wget https://github.com/${GH_USER}/${GH_REPO}/archive/refs/heads/${GH_BRANCH}.tar.gz -O "${GH_REPO}-${GH_BRANCH}.tar.gz" >> $LOGFILE 2>&1
    tar -xzvf ./"${GH_REPO}-${GH_BRANCH}.tar.gz" >> $LOGFILE 2>&1
    rm ./"${GH_REPO}-${GH_BRANCH}.tar.gz"

    rm -rf $BASH_IT
    mv "${GH_REPO}-${GH_BRANCH}" $BASH_IT

    if [[ $XXH_VERBOSE == '1' || $XXH_VERBOSE == '2' ]]; then
        echo "${plugin_name}: installing ${GH_USER}/${GH_REPO}"
    fi
    set +e
    source $BASH_IT/personal-startup.sh  >> $LOGFILE 2>&1
    bash $BASH_IT/bash_it_config_default.sh  >> $LOGFILE 2>&1

    mkdir -p `dirname $done_file`
    echo 'done' > $done_file
fi

source $BASH_IT/personal-startup.sh
