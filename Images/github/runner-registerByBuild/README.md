# Docker image creates GITHub Actions Runner with self register at build

This image creates a GITHub Actions Runner with registering at build.
Register informations must be given by build arguments. The runner
will work in the application mode (looping batch).



## Build arguments

| Argument | Required<br/>Optional | Default | Description |
| --- | --- | --- | --- |
| BASE_IMAGE | docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019 | Base image (FROM) |
| BASE_DIGEST | sha256:91a09c13f027fe27f1eef5df2348ed6c996a0823ab5008daa76c5abde85ea32a | Base digest (for documentation only) |
| GITHUB_RUNNER_VERSION | Optional| 2.308.0 | GITHub Actions Runner Version |
| **GITHUB_RUNNER_URL** | Required | | Runner URL (see when create new runner, argument "--url") |
| **GITHUB_RUNNER_TOKEN** | Required | | Runner Token (see when create new runner, argument "--token") |
| GITHUB_RUNNER_GROUP | Optional | | Runner Group |
| GITHUB_RUNNER_NAME | Optional | COMPUTERNAME or generated name | Runner Name |
| GITHUB_RUNNER_LABELS | Optional | (windows,x64) | Runner Additonal Labels (for your own; already existings are "windows" and "x64") |
| GITHUB_RUNNER_WORKFOLDER | Optional | \_work | Runner Work Folder |



## Environment variables added

| Variable | Value | Description |
| --- | --- | --- |
| GITHUB_RUNNER_VERSION | 2.308.0 | GITHub Actions Runner Version (from build argument) |
| GITHUB_RUNNER_URL | | GITHub Actions Runner URL (from build argument) |



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
