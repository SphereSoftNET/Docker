# Docker image to add 7Zip

This Docker image adds 7Zip to choosen base image



## Build arguments

| Argument | Default | Description |
| --- | --- | --- |
| BASE_IMAGE | docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-2019 | Base image (FROM) |
| BASE_DIGEST | sha256:25b9ec89f5776710ba2dbedd4ab2ec77f6d28b69459c77d14d2859bdc099edc5 | Base digest (for documentation only) |
| SEVEN_ZIP_VERSION | 2301 | 7Zip Version |


## Environment variables added

| Variable | Value | Description |
| --- | --- | --- |
| SEVEN_ZIP_VERSION | 2301 | 7Zip Version (from build argument) |



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
