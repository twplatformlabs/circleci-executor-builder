#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge curl --version"
  [[ "${output}" =~ "7.84" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gpg --version"
  [[ "${output}" =~ "2.2.35" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-slim-edge docker version"
  [[ "${output}" =~ "20.10.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.1034.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.8.0" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge inspec --version"
  [[ "${output}" =~ "5.18.14" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.34.0" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17.3" ]]
}
