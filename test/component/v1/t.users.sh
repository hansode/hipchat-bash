#!/bin/bash
#
# requires:
#   bash
#

## include files

. $(cd ${BASH_SOURCE[0]%/*} && pwd)/helper_shunit2.sh

## variables

declare namespace=users

## functions

function setUp() {
  :
}

function tearDown() {
  :
}

###

function test_create() {
  local cmd=create

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local email=foo@example.com
  local name=shunit2
  local mention_name=shunit2
  local title=subject
  local is_group_admin=1
  local password=01234567
  local timezone=JST
  local format=json

  local opts="
    --auth_token=${auth_token}
    --email=${email}
    --name=${name}
    --mention_name=${mention_name}
    --title=${title}
    --is_group_admin=${is_group_admin}
    --password=${password}
    --timezone=${timezone}
    --format=${format}
  "
  local params="
    email=${email}
    name=${name}
    mention_name=${mention_name}
    title=${title}
    is_group_admin=${is_group_admin}
    password=${password}
    timezone=${timezone}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd}?auth_token=${auth_token}\&format=${format})"
}

function test_delete() {
  local cmd=delete

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local user_id=1234
  local format=json

  local opts="
    --auth_token=${auth_token}
    --user_id=${user_id}
    --format=${format}
   "
  local params="
    user_id=${user_id}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd}?auth_token=${auth_token}\&format=${format})"
}

function test_list() {
  local cmd=list

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local include_deleted=1
  local format=json

  local opts="
    --auth_token=${auth_token}
    --include_deleted=${include_deleted}
    --format=${format}
  "
  local params="
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd}?auth_token=${auth_token}\&format=${format}\&include_deleted=${include_deleted})"
}

function test_show() {
  local cmd=show

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local user_id=1234
  local format=json

  local opts="
    --auth_token=${auth_token}
    --user_id=${user_id}
    --format=${format}
  "
  local params="
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X GET $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd}?auth_token=${auth_token}\&format=${format}\&user_id=${user_id})"
}

function test_undelete() {
  local cmd=undelete

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local user_id=1234
  local format=json

  local opts="
    --auth_token=${auth_token}
    --user_id=${user_id}
    --format=${format}
  "
  local params="
    user_id=${user_id}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd}?auth_token=${auth_token}\&format=${format})"
}

function test_update() {
  local cmd=update

  local auth_token=abcdefghijklmnopqrstuvwxyz
  local user_id=1234
  local email=foo@example.com
  local name=shunit2
  local mention_name=shunit2
  local title=subject
  local is_group_admin=1
  local password=01234567
  local timezone=JST
  local format=json

  local opts="
    --auth_token=${auth_token}
    --user_id=${user_id}
    --email=${email}
    --name=${name}
    --mention_name=${mention_name}
    --title=${title}
    --is_group_admin=${is_group_admin}
    --password=${password}
    --timezone=${timezone}
    --format=${format}
  "
  local params="
    user_id=${user_id}
    email=${email}
    name=${name}
    mention_name=${mention_name}
    title=${title}
    is_group_admin=${is_group_admin}
    password=${password}
    timezone=${timezone}
  "

  assertEquals \
   "$(cli_wrapper ${namespace} ${cmd} ${opts})" \
   "$(curl -X POST $(urlencode_data ${params}) $(base_uri)/${namespace}/${cmd}?auth_token=${auth_token}\&format=${format})"
}

## shunit2

. ${shunit2_file}
