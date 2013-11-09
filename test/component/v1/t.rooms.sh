#!/bin/bash
#
# requires:
#   bash
#

## include files

. $(cd ${BASH_SOURCE[0]%/*} && pwd)/helper_shunit2.sh

## variables

declare namespace=rooms

## functions

function setUp() {
  :
}

function tearDown() {
  :
}

##

function test_create() {
  local cmd=create

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local name=shunit2
  local privacy=1
  local topic=shunit2
  local guest_access=1
  local format=json

  local opts="
    --auth_token=${auth_token}
    --name=${name}
    --privacy=${privacy}
    --topic=${topic}
    --guest_access=${guest_access}
    --format=${format}
  "
  local params="
    auth_token=${auth_token}
    name=${name}
    privacy=${privacy}
    topic=${topic}
    guest_access=${guest_access}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
}

function test_delete() {
  local cmd=delete

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local room_id=1234
  local format=json

  local opts="
    --auth_token=${auth_token}
    --room_id=${room_id}
    --format=${format}
  "
  local params="
    auth_token=${auth_token}
    room_id=${room_id}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
}

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
    auth_token=${auth_token}
    room_id=${room_id}
    date=${date}
    timezone=${timezone}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
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
    auth_token=${auth_token}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
}

function test_message() {
  local cmd=message

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local room_id=1234
  local from=shunit2
  local message=shunit2-test
  local notify=1
  local color=green
  local format=json

  local opts="
    --auth_token=${auth_token}
    --room_id=${room_id}
    --from=${from}
    --message=${message}
    --notify=${notify}
    --color=${color}
    --format=${format}
  "
  local params="
    auth_token=${auth_token}
    room_id=${room_id}
    from=${from}
    message=${message}
    notify=${notify}
    color=${color}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
}

function test_topic() {
  local cmd=topic

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local room_id=1234
  local topic=shunit2
  local from=shunit2
  local format=json

  local opts="
    --auth_token=${auth_token}
    --room_id=${room_id}
    --topic=${topic}
    --from=${from}
    --format=${format}
  "
  local params="
    auth_token=${auth_token}
    room_id=${room_id}
    topic=${topic}
    from=${from}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
}

function test_show() {
  local cmd=show

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local room_id=1234
  local format=json

  local opts="
    --auth_token=${auth_token}
    --room_id=${room_id}
    --format=${format}
  "
  local params="
    auth_token=${auth_token}
    room_id=${room_id}
    format=${format}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd})"
}

## shunit2

. ${shunit2_file}
