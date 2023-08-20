# Docker image to add GIT

This Docker image adds GIT to choosen base image



## Build arguments

| Argument | Default | Description |
| --- | --- | --- |
| BASE_IMAGE | docker.io/spheresoftnet/net.framework.sdk:4.8-T4-2019 | Base image (FROM) |
| BASE_DIGEST | sha256:9ab5051b61e2a24252d045712021452d4e16059e2c8a77860f81248b948f2f09 | Base digest (for documentation only) |
| GIT_VERSION | 2.41.0 | GIT Version |
| GIT_REVISION | 3 | GIT Revision |


## Environment variables added

| Variable | Value | Description |
| --- | --- | --- |
| GIT_VERSION | 2.41.0 | GIT Version (from build argument) |
| GIT_REVISION | 3 | GIT Revision (from build argument) |



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
