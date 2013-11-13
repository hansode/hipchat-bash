# -*-Shell-script-*-
#

# include files

. ${BASH_SOURCE[0]%/*}/curlet.sh

# variables

## System part

LANG=C
LC_ALL=C

## curlet part

function rc_path() {
  echo ${HIPCHAT_RC:-${HOME}/.hipchatrc}
}

## HIPCHAT part

load_rc

extract_args "$@"

API_VERSION=${API_VERSION:-1}
API_HOST=${API_HOST:-api.hipchat.com}
API_PORT=${API_PORT:-443}
API_BASE_URI=${API_BASE_URI:-https://${API_HOST}:${API_PORT}}/v${API_VERSION}
