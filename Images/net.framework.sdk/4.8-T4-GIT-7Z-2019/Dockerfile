# escape=`

# <summary>
# Docker image add 7Zip
# </summary>
# <param name="BASE_IMAGE">Base image</param>
# <param name="BASE_DIGEST">Base digest (for documentation only)</param>
# <param name="SEVEN_ZIP_VERSION">7Zip Version</param>
# <revisionHistory>
#   <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
# </revisionHistory>


ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-2019

FROM ${BASE_IMAGE}

ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-2019
ARG BASE_DIGEST=sha256:46f2ce2094a30bfff1579ce92ede303f20076ccb22d129357aa79447ed905121
ARG SEVEN_ZIP_VERSION=2301

ENV SEVEN_ZIP_VERSION=${SEVEN_ZIP_VERSION}


LABEL org.opencontainers.image.description=".NET Framework 4.8 SDK (2019-LTSC) extension Text Templating (T4), GIT and 7ZIP"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/net.framework.sdk"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/net.framework.sdk/4.8-T4-GIT-7Z-2019/Dockerfile"
LABEL org.opencontainers.image.base.name="${BASE_IMAGE}"
LABEL org.opencontainers.image.base.digest="${BASE_DIGEST}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.24"
LABEL org.opencontainers.image.created="2023-08-24"


SHELL ["cmd", "/S", "/C"]


# Install 7ZIP
RUN echo Resolving / Downloading ... `
    && curl -fSLo 7z-x64.exe https://7-zip.org/a/7z%SEVEN_ZIP_VERSION%-x64.exe `
    && echo Installing ... `
    && start /w 7z-x64.exe /S `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del 7z-x64.exe


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
