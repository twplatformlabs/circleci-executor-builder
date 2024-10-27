#!/usr/bin/env bats

@test "nodejs version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge nodejs -v"
  [[ "${output}" =~ "20.16" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge npm -v"
  [[ "${output}" =~ "9.2" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge conftest --version"
  [[ "${output}" =~ "0.55" ]]
}

@test "hadolint version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge hadolint --version"
  [[ "${output}" =~ "2.12" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge snyk --version"
  [[ "${output}" =~ "1.1294" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge trivy --version"
  [[ "${output}" =~ "0.56" ]]
}

@test "grype version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge grype --version"
  [[ "${output}" =~ "0.82" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge cosign version"
  [[ "${output}" =~ "2.2" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge syft version"
  [[ "${output}" =~ "1.14" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge oras version"
  [[ "${output}" =~ "1.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-ubuntu-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}
