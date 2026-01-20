#!/usr/bin/env bats

@test "nodejs version" {
  run bash -c "docker exec container-test node --help"
  [[ "${output}" =~ "Usage: node" ]]
}

@test "npm version" {
  run bash -c "docker exec container-test npm --help"
  [[ "${output}" =~ "npm <command>" ]]
}

@test "bats version" {
  run bash -c "docker exec container-test bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "hadolint version" {
  run bash -c "docker exec container-test hadolint --help"
  [[ "${output}" =~ "Usage: hadolint" ]]
}

@test "snyk version" {
  run bash -c "docker exec container-test snyk --help"
  [[ "${output}" =~ "Snyk CLI scans" ]]
}

@test "trivy version" {
  run bash -c "docker exec container-test trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "grype version" {
  run bash -c "docker exec container-test grype --help"
  [[ "${output}" =~ "grype [command]" ]]
}

@test "cosign version" {
  run bash -c "docker exec container-test cosign --help"
  [[ "${output}" =~ "cosign [command]" ]]
}

@test "syft version" {
  run bash -c "docker exec container-test syft --help"
  [[ "${output}" =~ "syft [command]" ]]
}

@test "oras version" {
  run bash -c "docker exec container-test oras --help"
  [[ "${output}" =~ "oras [command]" ]]
}

@test "docker scout version" {
  run bash -c "docker exec container-test docker scout --help"
  [[ "${output}" =~ "attestation" ]]
}
