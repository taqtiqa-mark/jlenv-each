#!/usr/bin/env bats

load libs/bats-support/load
load libs/bats-assert/load
load test_helper

@test "jlenv-each shows usage" {
  create_versions v1.0.5 v1.0.5-rc99 v1.0.5-rc100 v1.0.5-rc371  

  run jlenv-each
  assert_failure
  assert_line "Usage: jlenv each [-v] <command> [arg1 arg2...]"
}

# This will not actually run the given command against the Julia version...
# Simply because we don't have jlenv installed, shims etup etc.
# However, if the JLENV is set correctly then the correct Julia should be 
# invoked when the `julia` command is used.  
# That is `julia` will call the shim and so set the correct version. 
@test "jlenv-each loops over installed Julias" {
  create_versions v1.0.5 v1.0.5-rc99 v1.0.5-rc100 v1.0.5-rc371  

  run jlenv-each --verbose echo true
  assert_success
  assert_output --partial "v1.0.5"
  assert_output --partial "v1.0.5-rc99"
  assert_output --partial "v1.0.5-rc100"
  assert_output --partial "v1.0.5-rc371"
}
