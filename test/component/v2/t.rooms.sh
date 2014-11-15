#!/bin/bash
#
# requires:
#   bash
#

## include files

. $(cd ${BASH_SOURCE[0]%/*} && pwd)/helper_shunit2.sh

## variables

declare namespace=room

## functions

function setUp() {
  :
}

function tearDown() {
  :
}

##

function test_history() {
  local cmd=history

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local room_id=1234
  local date=2013-11-09
  local timezone=JST
  local format=json

  local opts="
    --auth_token=${auth_token}
    --room_id=${room_id}
    --date=${date}
    --timezone=${timezone}
    --format=${format}
  "
  local params="
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}/${room_id}/history?auth_token=${auth_token}\&format=${format}\&date=${date}\&timezone=${timezone})"
}

function test_list() {
  local cmd=list

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local format=json

  local opts="
    --auth_token=${auth_token}
    --format=${format}
  "
  local params="
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}?auth_token=${auth_token}\&format=${format})"
}

## shunit2

. ${shunit2_file}
