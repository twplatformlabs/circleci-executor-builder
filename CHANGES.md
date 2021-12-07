## 12-06-2021 package versions in circleci-executor-builder:1.3.0

^changes  

FROM twdps/circleci-base-image:alpine-3.1.4^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.80.0-r0^   |
| wget            | 1.21.2-r2^   |
| gnupg           | 2.2.31-r1^   |
| docker          | 20.10.11-r0^ |
| snyk            | 1.785.0^     |
| bats            | 1.5.0^       |
| conftest        | 0.28.3^      |
| inspec          | 4.50.3^      |
| nodejs          | 16.13.1-r0^  |
| npm             | 8.1.3-r0^    |
| ruby            | 3.0.3-r0^    |

FROM twdps/circleci-base-image:slim-3.1.4^  

docker install pinned to bullseye since there is no bookworm or Sid release  
CVE scan turned off - no fix for the following:  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-WGET-1277613  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1085112  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-RUBYGEMS-1279004  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1290157  

| package         | version      |
|-----------------|--------------|
| curl            | 7.79.1-2^    |
| wget            | 1.21.2-2+b1^ |
| gnupg           | 2.2.27-2^    |
| docker          | 20.10.8      |
| snyk            | 1.785.0^     |
| bats            | 1.5.0^       |
| conftest        | 0.28.3^      |
| inspec          | 4.50.3^      |
| nodejs          | 14.18.2^     |
| ruby            | 1:2.7.6^     |


## 09-16-2021 package versions in circleci-executor-builder:1.2.0

^changes  

FROM twdps/circleci-base-image:alpine-3.1.3^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.79.0-r0^   |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r2^  |
| snyk            | 1.716.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.20      |
| nodejs          | 14.17.6-r0   |
| npm             | 7.17.0-r0    |
| ruby            | 2.7.4-r0     |

FROM twdps/circleci-base-image:slim-3.1.3^  

docker install pinned to bullseye since there is no bookworm or Sid release  
CVE scan turned off - no fix for the following:  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-WGET-1277613  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1085112  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-RUBYGEMS-1279004  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1290157  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.8      |
| snyk            | 1.716.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.20      |

## 09-01-2021 package versions in circleci-executor-builder:1.1.3

^changes  

Removed duplicate WORKDIR directive  
Cleaned up files left over from conftest install

FROM twdps/circleci-base-image:alpine-3.1.2^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.696.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.20^     |
| nodejs          | 14.17.6-r0^  |
| npm             | 7.17.0-r0    |
| ruby            | 2.7.4-r0     |

FROM twdps/circleci-base-image:slim-3.1.2^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.8^     |
| snyk            | 1.696.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.20^     |

## 08-26-2021 package versions in circleci-executor-builder:1.1.1

Added inspec license acceptance file  

## 08-26-2021 package versions in circleci-executor-builder:1.1.0

^changes  

FROM twdps/circleci-base-image:alpine-3.1.0^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.692.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.2       |
| nodejs          | 14.17.5-r0   |
| npm             | 7.17.0-r0    |
| ruby            | 2.7.4-r0     |

FROM twdps/circleci-base-image:slim-3.1.0^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.692.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.2       |


## 08-25-2021 package versions in circleci-executor-builder:1.0.0

FROM twdps/circleci-base-image:alpine-3.0.0  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.683.0      |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.2       |

FROM twdps/circleci-base-image:slim-3.0.0  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.683.0      |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.2       |

