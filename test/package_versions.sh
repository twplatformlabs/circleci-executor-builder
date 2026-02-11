#!/usr/bin/env bats

if [[ -z "${TEST_CONTAINER}" ]]; then
  echo "ERROR: TEST_CONTAINER environment variable is not set"
  exit 1
fi

RESULT=$(bash -c "docker exec ${TEST_CONTAINER} node --version")
echo "nodejs ${RESULT}" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} snyk version")
echo "snyk ${RESULT}" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} bats version")
echo "bats ${RESULT}" && echo
bash -c "docker exec ${TEST_CONTAINER} hadolint --version" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} trivy --version | grep Version")
echo "trivy ${RESULT}" && echo
bash -c "docker exec ${TEST_CONTAINER} syft --version" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} oras version")
echo "oras ${RESULT}" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} cosign version | grep GitVersion")
echo "cosign ${RESULT}" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} grype version | grep 'Version: 0'")
echo "grype ${RESULT}" && echo
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} docker scout version | grep version")
echo "Scout ${RESULT}" && echo