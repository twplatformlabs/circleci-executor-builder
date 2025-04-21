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

See the psk [circleci-remote-docker](https://github.com/twplatformlabs/circleci-remote-docker) repository for details about image signing and sbom verification used by all twdps PSK executor images.  

### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-base-image:-<YYYY.MM>
twdps/circleci-base-image:-stable
twdps/circleci-base-image:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2025.04` would be the monthly tag from April 2025. This image is generated monthly, based on the then current release of the base image and related packages and provides a predictable fixed point for use in an executor Dockerfile. Review the build log in the pipeline artifacts for the specific image and package versions. Occasionally there will be interim patches released and you may see `2025.04.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Typically used by other recurring builds and not recommended for pipeline usage. Pin pipelines to specific month-tagged builds.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.  
