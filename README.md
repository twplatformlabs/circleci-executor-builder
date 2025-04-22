<div align="center">
  <p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>twdps/circleci-executor-builder</h1>
  <h3>PSK CircleCI Convenience Images</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-executor-builder"><img src="https://circleci.com/gh/twplatformlabs/circleci-executor-builder.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-executor-builder"></a>
</div>
<br />

Enterprises using CircleCI will find that building executors is a common task. Having a dedicated resource, pre-configured and maintained with image testing frameworks, security scanning, and provenance tools will make for a consistent, quality experience.  

_Note. With adoption of monthly recurring builds the github-release-notes npm tool has been removed._  

The PSK builder includes common tools:  

**configuration testing**  
- [bats](https://github.com/bats-core/bats-core)
- [hadolint](https://github.com/hadolint/hadolint)

**scanning**  
- [snyk](https://github.com/snyk/cli)
- [trivy](https://github.com/aquasecurity/trivy)
- [grype](https://github.com/anchore/grype)

**provenance**
- [cosign](https://github.com/sigstore/cosign)
- [syft](https://github.com/anchore/syft)
- [oras](https://github.com/oras-project/oras)

_Review the build and CVE scan logs in the release artifacts for specific packages versions and known vulnerabilities (if any)._

**signature**. Images are signed using `cosign`. Verify images using the twplatformlabs [public key](https://raw.githubusercontent.com/twplatformlabs/static/master/cosign.pub).  
```bash
cosign verify --key cosign.pub twdps/circleci-executor-builder:alpine-2025.04
```  
**software bill of materials**. For each published image, a _Software Bill of Materials_ is generated using [syft](https://github.com/anchore/syft) and added as an attestation.  

validate attestation:  
```bash
cosign verify-attestation --type https://spdx.dev/Document --key cosign.pub twdps/circleci-executor-builder:alpine-2025.04
```
download manifest and extract bill of materials (sbom.spdx.json):  
```
cosign download attestation twdps/circleci-executor-builder:alpine-2025.04 > attestation.json  
jq -r '.payload' attestation.json | base64 -d > envelope.json
jq '.predicate' envelope.json > sbom.spdx.json
```
_Note. Dockerhub Scout does not appear to support non-docker attestations_  

### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-executor-builder:-<YYYY.MM>
twdps/circleci-executor-builder:-stable
twdps/circleci-executor-builder:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2025.04` would be the monthly tag from April 2025. This image is generated monthly, based on the then current release of the base image and related packages and provides a predictable fixed point for use in an executor Dockerfile. Review the build log in the pipeline artifacts for the specific image and package versions. Occasionally there will be interim patches released and you may see `2025.04.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Typically used by other recurring builds and not recommended for pipeline usage. Pin pipelines to specific month-tagged builds.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.  
