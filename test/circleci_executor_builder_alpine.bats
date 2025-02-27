#!/usr/bin/env bats

@test "nodejs version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge node --version"
  [[ "${output}" =~ "23.2" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge npm --version"
  [[ "${output}" =~ "10.9" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "hadolint version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge hadolint --version"
  [[ "${output}" =~ "2.12" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge snyk --version"
  [[ "${output}" =~ "1.1295" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge trivy --version"
  [[ "${output}" =~ "0.59" ]]
}

@test "grype version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge grype --version"
  [[ "${output}" =~ "0.87" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge cosign version"
  [[ "${output}" =~ "2.4" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge syft version"
  [[ "${output}" =~ "1.20" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge oras version"
  [[ "${output}" =~ "1.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}
