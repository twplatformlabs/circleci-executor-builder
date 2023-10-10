<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <h3>EMPC Convenience Images</h3>
  <h1>twdps/circleci-executor-builder</h1>
  <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/circleci-executor-builder"><img src="https://circleci.com/gh/ThoughtWorks-DPS/circleci-executor-builder.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/circleci-executor-builder"></a>
</div>
<br />

Enterprises using CircleCI will find that building executors is a common task. Having a dedicated resource, pre-configured and maintained with current release versions of docker, tools for downloading packages, and standard testing frameworks will make for a consistent, quality experience.  

The DPS builder includes the following:  

| base     | file xfer  | test     |
|:--------:|:----------:|:--------:|
| docker   | curl       | bats     |
| ruby     | wget       | inspec   |
| nodejs   | gnupg      | conftest |
| npm      |            | snyk     |
| gren     |            |          |
| cosign   |            |          |
| syft     |            |          |
| oras     |            |          |

See release notes for detailed version information.  

See thet psk [circleci-remote-docker](https://github.com/ThoughtWorks-DPS/circleci-remote-docker) image repository for details image signing and sbom verification used by all twdps PSK executor images.  
