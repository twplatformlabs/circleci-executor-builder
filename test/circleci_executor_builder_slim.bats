#!/usr/bin/env bats

@test "nodejs version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge nodejs -v"
  [[ "${output}" =~ "18.19" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge npm -v"
  [[ "${output}" =~ "9.2" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.10" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.50" ]]
}

@test "hadolint version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge hadolint --version"
  [[ "${output}" =~ "2.12" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.1284" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge trivy --version"
  [[ "${output}" =~ "0.49" ]]
}

@test "grype version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge grype --version"
  [[ "${output}" =~ "0.74" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge cosign version"
  [[ "${output}" =~ "2.2" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge syft version"
  [[ "${output}" =~ "1.0" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge oras version"
  [[ "${output}" =~ "1.1" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}
