#!/usr/bin/env bats

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge docker version"
  [[ "${output}" =~ "23.0" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge snyk --version"
  [[ "${output}" =~ "1.1198" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge bats -v"
  [[ "${output}" =~ "1.10" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge inspec --version"
  [[ "${output}" =~ "5.21" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge conftest --version"
  [[ "${output}" =~ "0.44" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge cosign version"
  [[ "${output}" =~ "2.0" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge syft version"
  [[ "${output}" =~ "0.86" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge oras version"
  [[ "${output}" =~ "1.0" ]]
}