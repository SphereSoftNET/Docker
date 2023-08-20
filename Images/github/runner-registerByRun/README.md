# Docker image creates GITHub Actions Runner with self register at run

This image creates a GITHub Actions Runner with registering at start.
Register informations can be given by environment variables. The runner
will work in the application mode (looping batch).



## Build arguments

| Argument | Default | Description |
| --- | --- | --- |
| BASE_IMAGE | mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 | Base image (FROM) |
| BASE_DIGEST | sha256:a6e1586b48076f988a1c8a25b4c3cdecd585c4f99497127bb3432f7d72262704 | Base digest (for documentation only) |
| GITHUB_RUNNER_VERSION | 2.308.0 | GITHub Actions Runner Version |



## Environment variables added

| Variable | Value | Description |
| --- | --- | --- |
| GITHUB_RUNNER_VERSION | 2.308.0 | GITHub Actions Runner Version (from build argument) |



## Environment variables for run

| Variable | Required<br/>Optional | Description |
| --- | --- | --- |
| **GITHUB_RUNNER_URL** | Required | Runner URL (see when create new runner, argument "--url") |
| **GITHUB_RUNNER_TOKEN** | Required | Runner Token (see when create new runner, argument "--token") |
| GITHUB_RUNNER_GROUP | Optional | Runner Group (default is empty) |
| GITHUB_RUNNER_NAME | Optional | Runner Name (default is COMPUTERNAME or generated name) |
| GITHUB_RUNNER_LABELS | Optional | Runner Additonal Labels (for your own; alredy existings are "windows" and "x64") |
| GITHUB_RUNNER_WORKFOLDER | Optional | Runner Work Folder (default is "_Work") |



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
