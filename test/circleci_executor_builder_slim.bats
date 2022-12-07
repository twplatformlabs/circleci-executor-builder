#!/usr/bin/env bats

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-slim-edge docker version"
  [[ "${output}" =~ "20.10.21" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.1069.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.8.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge inspec --version"
  [[ "${output}" =~ "5.18.14" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.36.0" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17.3" ]]
}
