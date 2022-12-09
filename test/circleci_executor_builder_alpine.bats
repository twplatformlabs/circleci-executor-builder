#!/usr/bin/env bats

@test "gpg version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gpg --version"
  [[ "${output}" =~ "2.2.40" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge docker version"
  [[ "${output}" =~ "20.10.21" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge snyk --version"
  [[ "${output}" =~ "1.1069.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge bats -v"
  [[ "${output}" =~ "1.8.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge inspec --version"
  [[ "${output}" =~ "5.18.14" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge conftest --version"
  [[ "${output}" =~ "0.34.0" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gren --version"
  [[ "${output}" =~ "0.17.3" ]]
}
