#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge curl --version"
  [[ "${output}" =~ "7.82" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gpg --version"
  [[ "${output}" =~ "2.2.34" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-slim-edge docker version"
  [[ "${output}" =~ "20.10.14" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.912.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.6.0" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge inspec --version"
  [[ "${output}" =~ "5.14.0" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.31.0" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17.3" ]]
}
