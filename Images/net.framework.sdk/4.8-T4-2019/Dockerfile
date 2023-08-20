# escape=`

# <summary>
# Docker image add Microsoft Visual Studio component (Microsoft.VisualStudio.Component.TextTemplating)
# </summary>
# <param name="BASE_IMAGE">Base image</param>
# <param name="BASE_DIGEST">Base digest (for documentation only)</param>
# <param name="MICROSOFT_VS_BUILD_TOOLS_VERSION">Microsoft Visual Studio Build Tools Version</param>
# <param name="MICROSOFT_VS_BUILD_TOOLS_COMPONENT">Microsoft Visual Studio Build Tools Component</param>
# <revisionHistory>
#   <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
# </revisionHistory>


ARG BASE_IMAGE=mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

FROM ${BASE_IMAGE} as base


ARG BASE_IMAGE=mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019
ARG BASE_DIGEST=sha256:a6e1586b48076f988a1c8a25b4c3cdecd585c4f99497127bb3432f7d72262704
ARG MICROSOFT_VS_BUILD_TOOLS_VERSION=17
ARG MICROSOFT_VS_BUILD_TOOLS_COMPONENT=Microsoft.VisualStudio.Component.TextTemplating


LABEL org.opencontainers.image.description=".NET Framework 4.8 SDK (2019-LTSC) extension ${MICROSOFT_VS_BUILD_TOOLS_COMPONENT}"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/net.framework.sdk"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/net.framework.sdk/4.8-T4-2019/Dockerfile"
LABEL org.opencontainers.image.base.name="${BASE_IMAGE}"
LABEL org.opencontainers.image.base.digest="${BASE_DIGEST}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.20"
LABEL org.opencontainers.image.created="2023-08-20"


SHELL ["cmd", "/S", "/C"]


# Install VS component
RUN echo Resolving / Downloading ... `
    && curl -fSLo vs_BuildTools.exe https://aka.ms/vs/%MICROSOFT_VS_BUILD_TOOLS_VERSION%/release/vs_BuildTools.exe `
    && echo Installing ... `
    && start /w vs_BuildTools `
         --add %MICROSOFT_VS_BUILD_TOOLS_COMPONENT% `
         --quiet --norestart --nocache --wait `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del vs_BuildTools.exe


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
