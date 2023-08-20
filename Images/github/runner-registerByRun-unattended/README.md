# Docker image creates GITHub Actions Runner with self register at run (unattended)

- [Build arguments](#build-arguments)
- [Environment variables added](#environment-variables-added)
- [Environment variables for run](#environment-variables-for-run)
- [Docker Images](#docker-images)

This image creates a GITHub Actions Runner with registering at run (unattended).
Register informations must be given by environment variables. The runner
will work in the application mode (looping batch).



## [Build arguments](#)

| Argument | Default | Description |
| --- | --- | --- |
| BASE_IMAGE | docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019 | Base image (FROM) |
| BASE_DIGEST | sha256:91a09c13f027fe27f1eef5df2348ed6c996a0823ab5008daa76c5abde85ea32a | Base digest (for documentation only) |
| GITHUB_RUNNER_VERSION | 2.308.0 | GITHub Actions Runner Version |



## [Environment variables added](#)

| Variable | Value | Description |
| --- | --- | --- |
| GITHUB_RUNNER_VERSION | 2.308.0 | GITHub Actions Runner Version (from build argument) |



## [Environment variables for run](#)

| Variable | Description |
| --- | --- | --- |
| **GITHUB_RUNNER_URL** | Runner URL (see when create new runner, argument "--url") |
| **GITHUB_RUNNER_TOKEN** | Runner Token (see when create new runner, argument "--token") |



## [Docker Images](#)

[![docker.com/spheresoftnet/github:runner-registerByRun-unattended](https://www.docker.com/wp-content/uploads/2023/04/cropped-Docker-favicon-32x32.png) docker.com/spheresoftnet/github:runner-registerByRun-unattended](https://hub.docker.com/layers/spheresoftnet/github/runner-registerByRun/images/sha256-1f81fa337a6f98ac410baa141f05d1778fbc175f9a8f06bd0b07ef44be1177e5)  
[<img src="https://github.com/fluidicon.png" alt="ghcr.io/spheresoftnet/github:runner-registerByRun-unattended" height="32"/> spheresoftnet/github:runner-registerByRun-unattended](https://github.com/SphereSoftNET/Docker/pkgs/container/github/119116954?tag=runner-registerByRun-unattended)



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
