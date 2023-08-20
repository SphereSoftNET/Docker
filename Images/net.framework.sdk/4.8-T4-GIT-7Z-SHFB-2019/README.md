# Docker image to add HTML Help Workshop and Sandcastle Help File Builder

This Docker image adds HTML Help Workshop and Sandcastle Help File Builder to choosen base image.



## Build arguments

| Argument | Default | Description |
| --- | --- | --- |
| BASE_IMAGE | docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019 | Base image (FROM) |
| BASE_DIGEST | sha256:09409f04b5a83daea9ba1f0fb16c4ec6c588ebfc0f2bb4a3d5323291bd821b7f | Base digest (for documentation only) |
| SHFB_VERSION | 2023.7.8.0 | Sandcastle Help File Builder Version |


## Environment variables added

| Variable | Value | Description |
| --- | --- | --- |
| SHFB_VERSION | 2023.7.8.0 | Sandcastle Help File Builder Version (from build argument) |



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
