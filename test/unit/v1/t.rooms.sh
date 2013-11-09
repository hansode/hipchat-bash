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
  extract_args ${namespace} create
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

function test_delete() {
  extract_args ${namespace} delete
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

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

function test_message() {
  extract_args ${namespace} message
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

function test_topic() {
  extract_args ${namespace} topic
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

function test_show() {
  extract_args ${namespace} show
  run_cmd ${COMMAND_ARGS}
  assertEquals 0 $?
}

## shunit2

. ${shunit2_file}
