#!/usr/bin/env bats

if [[ -z "${TEST_CONTAINER}" ]]; then
  echo "ERROR: TEST_CONTAINER environment variable is not set"
  exit 1
fi

bash -c "docker exec ${TEST_CONTAINER} node --version" && echo
bash -c "docker exec ${TEST_CONTAINER} snyk version" && echo
bash -c "docker exec ${TEST_CONTAINER} bats version" && echo
bash -c "docker exec ${TEST_CONTAINER} hadolint --version" && echo
bash -c "docker exec ${TEST_CONTAINER} trivy --version" && echo
bash -c "docker exec ${TEST_CONTAINER} syft --version" && echo
bash -c "docker exec ${TEST_CONTAINER} oras version" && echo
bash -c "docker exec ${TEST_CONTAINER} cosign version" && echo
bash -c "docker exec ${TEST_CONTAINER} grype version" && echo
bash -c "docker exec ${TEST_CONTAINER} docker scout version"