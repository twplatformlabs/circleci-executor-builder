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
|inspec           | 4.41.2       |

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
|inspec           | 4.41.2       |

