# -*-Shell-script-*-
#
# requires:
#   bash
#

## system variables

readonly abs_dirname=$(cd ${BASH_SOURCE[0]%/*} && pwd)
readonly shunit2_file=${abs_dirname}/../../shunit2

## include files

. ${abs_dirname}/../../../lib/initializer.sh

## group variables

#declare COMMAND_DRY_RUN=yes
# declare COMMAND_LOGLEVEL=debug
declare API_VERSION=2

## group functions

function curl_opts() { :; }
function curl() { echo curl $@; }

##

function cli_wrapper() {
  extract_args $@
  run_cmd ${COMMAND_ARGS}
}
