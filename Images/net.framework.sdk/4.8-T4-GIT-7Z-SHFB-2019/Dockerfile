# escape=`

# <summary>
# Docker image add HTML Help Workshop and Sandcastle Help File Builder
# </summary>
# <param name="BASE_IMAGE">Base image</param>
# <param name="BASE_DIGEST">Base digest (for documentation only)</param>
# <param name="SHFB_VERSION">Sandcastle Help File Builder Version</param>
# <revisionHistory>
#   <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
# </revisionHistory>


ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019

FROM ${BASE_IMAGE}

ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019
ARG BASE_DIGEST=sha256:09409f04b5a83daea9ba1f0fb16c4ec6c588ebfc0f2bb4a3d5323291bd821b7f
ARG SHFB_VERSION=2023.7.8.0


ENV SHFB_VERSION=${SHFB_VERSION}


LABEL org.opencontainers.image.description=".NET Framework 4.8 SDK (2019-LTSC) extension Text Templating (T4), GIT, 7ZIP, HHC and SHFB"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/net.framework.sdk"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/net.framework.sdk/4.8-T4-GIT-7Z-SHFB-2019/Dockerfile"
LABEL org.opencontainers.image.base.name="${BASE_IMAGE}"
LABEL org.opencontainers.image.base.digest="${BASE_DIGEST}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.20"
LABEL org.opencontainers.image.created="2023-08-20"


SHELL ["cmd", "/S", "/C"]


# Install HTML Help 1 Compiler
# Orignal URL doesn't work any more, so we use webarchive.org
# http://download.microsoft.com/download/0/A/9/0A939EF6-E31C-430F-A3DF-DFAE7960D564/htmlhelp.exe
RUN echo HTML Help Workshop ... `
    && echo Resolving / Downloading ... `
    && curl -fSLo htmlhelp.exe http://web.archive.org/web/20160201063255/http://download.microsoft.com/download/0/A/9/0A939EF6-E31C-430F-A3DF-DFAE7960D564/htmlhelp.exe `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && echo Installing ... `
    && "C:\Program Files\7-Zip\7z" e htmlhelp.exe -tcab -o"C:\Program Files (x86)\HTML Help Workshop" `
    && del htmlhelp.exe


# Install Sandcastle Help File Builder (SHFB)
RUN echo Sandcastle Help File Builder ... `
    && echo Resolving / Downloading ... `
    && curl -fSLo SHFBInstaller.zip https://github.com/EWSoftware/SHFB/releases/download/%SHFB_VERSION%/SHFBInstaller_%SHFB_VERSION%.zip `
    && echo Installing ... `
    && start /w "C:\Program Files\7-Zip\7z" e SHFBInstaller.zip InstallResources/SandcastleHelpFileBuilder.msi `
    && start /w msiexec /i SandcastleHelpFileBuilder.msi /quiet /norestart `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del SandcastleHelpFileBuilder.msi `
    && del SHFBInstaller.zip


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
