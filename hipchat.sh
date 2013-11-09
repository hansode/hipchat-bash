#!/bin/bash
#
# requires:
#  bash
#
# description:
#  HipChat API Client
#
set -e

# include files

. ${BASH_SOURCE[0]%/*}/lib/initializer.sh

# main

run_cmd ${COMMAND_ARGS}
