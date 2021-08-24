#!/usr/bin/env bats

@test "bash version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge bash --version"
  [[ "${output}" =~ "5.1.4" ]]
}

@test "curl version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge curl --version"
  [[ "${output}" =~ "7.77.0" ]]
}

@test "docker health" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge docker version"
  [[ "${output}" =~ "20.10.7" ]]
}

@test "node version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge node -v"
  [[ "${output}" =~ "14.17.1" ]]
}

@test "npm version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge npm -v"
  [[ "${output}" =~ "7.17.0" ]]
}

@test "snyk version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge snyk --version"
  [[ "${output}" =~ "1.653.0" ]]
}

@test "bats version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge bats -v"
  [[ "${output}" =~ "1.3.0" ]]
}

@test "conftest version" {
  run bash -c "docker exec di-circleci-base-image-alpine-edge conftest --version"
  [[ "${output}" =~ "0.25.0" ]]
}
