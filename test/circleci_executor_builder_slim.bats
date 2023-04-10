#!/usr/bin/env bats

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-slim-edge docker version"
  [[ "${output}" =~ "23.0.3" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.1111.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.9.0" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge inspec --version"
  [[ "${output}" =~ "5.21.29" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.39.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17.3" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge cosign version"
  [[ "${output}" =~ "2.0.1" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge syft version"
  [[ "${output}" =~ "0.76.1" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge oras version"
  [[ "${output}" =~ "1.0.0" ]]
}