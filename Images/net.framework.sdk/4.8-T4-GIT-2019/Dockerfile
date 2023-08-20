# escape=`

# <summary>
# Docker image add GIT
# </summary>
# <param name="BASE_IMAGE">Base image</param>
# <param name="BASE_DIGEST">Base digest (for documentation only)</param>
# <param name="GIT_VERSION">GIT Version</param>
# <param name="GIT_REVISION">GIT Revision</param>
# <remarks><paramref name="GIT_VERSION"/> and <paramref name="GIT_REVISION"/> are used for download handling</remarks>
# <revisionHistory>
#   <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
# </revisionHistory>


ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-2019

FROM ${BASE_IMAGE}

ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-2019
ARG BASE_DIGEST=sha256:b1afef3c38cd1ff0d73a2af407d730c2a4b5a2f81d9c031f94e6fdca0acdd439
ARG GIT_VERSION=2.41.0
ARG GIT_REVISION=3

ENV GIT_VERSION=${GIT_VERSION}
ENV GIT_REVISION=${GIT_REVISION}


LABEL org.opencontainers.image.description=".NET Framework 4.8 SDK (2019-LTSC) extension Text Templating (T4) and GIT"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/net.framework.sdk"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/net.framework.sdk/4.8-T4-GIT-2019/Dockerfile"
LABEL org.opencontainers.image.base.name="${BASE_IMAGE}"
LABEL org.opencontainers.image.base.digest="${BASE_DIGEST}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.20"
LABEL org.opencontainers.image.created="2023-08-20"


SHELL ["cmd", "/S", "/C"]


# Install GIT
RUN echo Resolving / Downloading ... `
    && curl -fSLo Git-64-bit.exe https://github.com/git-for-windows/git/releases/download/v%GIT_VERSION%.windows.%GIT_REVISION%/Git-%GIT_VERSION%.%GIT_REVISION%-64-bit.exe `
    && echo Installing ... `
    && start /w Git-64-bit /SILENT /NORESTART `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del Git-64-bit.exe


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
