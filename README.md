<div align="center">
	<p>
    <img alt="ghcr Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/ghcr.png" width=200 />
		<h2>NOTE: The ThoughtWorks EMPC CircleCI convenience images are moving from Dockerhub to the Github Contrainer Registry. Docker is discontinuing the free Teams tier for opensource projects, so we are moving to ghcr. Prior versions will ONLY remain available on dockerhub until mid-May.</h2>
		<br />
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <h3>EMPC Convenience Images</h3>
  <h1>twdps/circleci-executor-builder</h1>
  <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/circleci-executor-builder"><img src="https://circleci.com/gh/ThoughtWorks-DPS/circleci-executor-builder.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/circleci-executor-builder"></a> <a href="https://keybase.io/twdps"><img src="https://img.shields.io/keybase/pgp/twdps?label=keybase&logo=keybase"></a>
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

See release notes for for detailed version information.  
