#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge curl --version"
  [[ "${output}" =~ "7.80.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge wget --version"
  [[ "${output}" =~ "1.21.2" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gpg --version"
  [[ "${output}" =~ "2.2.31" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge docker version"
  [[ "${output}" =~ "20.10.11" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge snyk --version"
  [[ "${output}" =~ "1.785.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge bats -v"
  [[ "${output}" =~ "1.5.0" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge inspec --version"
  [[ "${output}" =~ "4.50.3" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge conftest --version"
  [[ "${output}" =~ "0.28.3" ]]
}
