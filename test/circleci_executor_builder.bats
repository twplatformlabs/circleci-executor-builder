#!/usr/bin/env bats

setup() {
  if [[ -z "${TEST_CONTAINER}" ]]; then
    echo "ERROR: TEST_CONTAINER environment variable is not set"
    echo "Example:"
    echo "  TEST_CONTAINER=my-container bats tests.bats"
    exit 1
  fi
}

@test "nodejs version" {
  run bash -c "docker exec ${TEST_CONTAINER} node --help"
  [[ "${output}" =~ "Usage: node" ]]
}

@test "npm version" {
  run bash -c "docker exec ${TEST_CONTAINER} npm --help"
  [[ "${output}" =~ "npm <command>" ]]
}

@test "bats version" {
  run bash -c "docker exec ${TEST_CONTAINER} bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "hadolint version" {
  run bash -c "docker exec ${TEST_CONTAINER} hadolint --help"
  [[ "${output}" =~ "Usage: hadolint" ]]
}

@test "snyk version" {
  run bash -c "docker exec ${TEST_CONTAINER} snyk --help"
  [[ "${output}" =~ "Snyk CLI scans" ]]
}

@test "trivy version" {
  run bash -c "docker exec ${TEST_CONTAINER} trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "grype version" {
  run bash -c "docker exec ${TEST_CONTAINER} grype --help"
  [[ "${output}" =~ "grype [command]" ]]
}

@test "cosign version" {
  run bash -c "docker exec ${TEST_CONTAINER} cosign --help"
  [[ "${output}" =~ "cosign [command]" ]]
}

@test "syft version" {
  run bash -c "docker exec ${TEST_CONTAINER} syft --help"
  [[ "${output}" =~ "syft [command]" ]]
}

@test "oras version" {
  run bash -c "docker exec ${TEST_CONTAINER} oras --help"
  [[ "${output}" =~ "oras [command]" ]]
}

@test "docker scout version" {
  run bash -c "docker exec ${TEST_CONTAINER} docker scout --help"
  [[ "${output}" =~ "attestation" ]]
}
