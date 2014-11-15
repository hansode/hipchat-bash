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
  extract_args ${namespace} history
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

function test_list() {
  extract_args ${namespace} list
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

## shunit2

. ${shunit2_file}
