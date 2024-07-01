#!/usr/bin/env bats

@test "nodejs version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge nodejs -v"
  [[ "${output}" =~ "20.15" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge npm -v"
  [[ "${output}" =~ "9.2" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.53" ]]
}

@test "hadolint version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge hadolint --version"
  [[ "${output}" =~ "2.12" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.1292" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge trivy --version"
  [[ "${output}" =~ "0.53" ]]
}

@test "grype version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge grype --version"
  [[ "${output}" =~ "0.79" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge cosign version"
  [[ "${output}" =~ "2.2" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge syft version"
  [[ "${output}" =~ "1.8" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge oras version"
  [[ "${output}" =~ "1.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}
