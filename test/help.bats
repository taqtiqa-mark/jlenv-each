#!/usr/bin/env bats

load libs/bats-support/load
load libs/bats-assert/load
load test_helper

@test 'help for each is available' {
  run jlenv-help 'each'
  assert_success
  assert_line 'Usage: jlenv each [-v] <command> [arg1 arg2...]'
  assert_line 'Executes a command for each Julia version by setting JLENV_VERSION.'
  assert_line 'https://github.com/jlenv/jlenv-each#readme'
}
