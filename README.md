<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <h3>PSK Convenience Images</h3>
  <h1>twdps/circleci-executor-builder</h1>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-executor-builder"><img src="https://circleci.com/gh/twplatformlabs/circleci-executor-builder.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-executor-builder"></a>
</div>
<br />

Enterprises using CircleCI will find that building executors is a common task. Having a dedicated resource, pre-configured and maintained with image testing frameworks, security scanning, and provenance tools will make for a consistent, quality experience.  

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
- [gren](https://github.com/github-tools/github-release-notes)

See release notes for detailed version information.  

See the psk [circleci-remote-docker](https://github.com/twplatformlabs/circleci-remote-docker) image repository for details image signing and sbom verification used by all twdps PSK executor images.  

_Note. With release version 8.0.0 the conftest tool and CIS Docker Benchmark scanning is removed._
