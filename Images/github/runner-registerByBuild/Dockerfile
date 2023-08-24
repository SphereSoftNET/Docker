# escape=`

# <summary>
# Docker image create GITHub Actions Runner with self register at build
# </summary>
# <param name="BASE_IMAGE">Base image</param>
# <param name="BASE_DIGEST">Base digest (for documentation only)</param>
# <param name="GITHUB_RUNNER_VERSION">GITHub Actions Runner Version</param>
# <param name="GITHUB_RUNNER_URL">GITHub Actions Runner URL (from create of runner, parameter "--url")</param>
# <param name="GITHUB_RUNNER_TOKEN">GITHub Actions Runner URL (from create of runner, parameter "--token")</param>
# <param name="GITHUB_RUNNER_GROUP">Optional GITHub Actions Runner Group; default empty</param>
# <param name="GITHUB_RUNNER_NAME">Optional GITHub Actions Runner Name; default COMPUTERNAME or generated</param>
# <param name="GITHUB_RUNNER_LABELS">Optional GITHub Actions Runner Labels; own labels, already existings are "windows" and "x64"</param>
# <param name="GITHUB_RUNNER_WORKFOLDER">Optional GITHub Actions Runner Work Folder; default "_work"</param>
# <revisionHistory>
#   <revision version="2023.08.24" date="2023-08-24" author="Holger Boskugel, github.com/SphereSoftNET">Added "--replace --disableupdate" at registration and environment variables as registration report</revision>
#   <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
# </revisionHistory>


ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019

FROM ${BASE_IMAGE}


ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019
ARG BASE_DIGEST=sha256:062fe6216c748abe76e4deefec770231fc4cb3dfe39ded20e6d71acada43413d
ARG GITHUB_RUNNER_VERSION=2.308.0
ARG GITHUB_RUNNER_URL
ARG GITHUB_RUNNER_TOKEN
ARG GITHUB_RUNNER_GROUP
ARG GITHUB_RUNNER_NAME
ARG GITHUB_RUNNER_LABELS
ARG GITHUB_RUNNER_WORKFOLDER


ENV GITHUB_RUNNER_VERSION=${GITHUB_RUNNER_VERSION}
ENV GITHUB_RUNNER_URL=${GITHUB_RUNNER_URL}
ENV GITHUB_RUNNER_GROUP=${GITHUB_RUNNER_GROUP}
ENV GITHUB_RUNNER_NAME=${GITHUB_RUNNER_NAME}
ENV GITHUB_RUNNER_LABELS=${GITHUB_RUNNER_LABELS}
ENV GITHUB_RUNNER_WORKFOLDER=${GITHUB_RUNNER_WORKFOLDER}


LABEL org.opencontainers.image.description="GITHub Runner ${GITHUB_RUNNER_VERSION} self registered by build"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/github"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/github/runner-2.308.0/Dockerfile"
LABEL org.opencontainers.image.base.name="docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019"
LABEL org.opencontainers.image.base.digest="a2f4f898d5f39480a2d18ee12ccfe146470838267a1838bdc08e2a6a94eb3c30"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.24"
LABEL org.opencontainers.image.created="2023-08-24"


SHELL ["cmd", "/S", "/C"]


RUN echo Proof arguments ... `
    && if not defined GITHUB_RUNNER_URL (echo Argument "GITHUB_RUNNER_URL" is missing! && exit /b 1) `
    && if not defined GITHUB_RUNNER_TOKEN (echo Argument "GITHUB_RUNNER_TOKEN" is missing! && exit /b 2) `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }"

    
# Install GITHub Runner
RUN echo Resolving / Downloading ... `
    && curl -fSLo actions-runner-win-x64.zip https://github.com/actions/runner/releases/download/v%GITHUB_RUNNER_VERSION%/actions-runner-win-x64-%GITHUB_RUNNER_VERSION%.zip `
    && echo Installing ... `
    && "Program Files\7-Zip\7z" x actions-runner-win-x64.zip -o"%ProgramFiles%\GITHub\actions-runner" `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del actions-runner-win-x64.zip


# Register GITHub Runner
RUN echo Registering ... `
    && (if defined GITHUB_RUNNER_GROUP (echo %GITHUB_RUNNER_GROUP% > "Program Files\GITHub\actions-runner\config.dat") else (echo. > "Program Files\GITHub\actions-runner\config.dat")) `
    && (if defined GITHUB_RUNNER_NAME (echo %GITHUB_RUNNER_NAME% >> "Program Files\GITHub\actions-runner\config.dat") else (echo. >> "Program Files\GITHub\actions-runner\config.dat")) `
    && (if defined GITHUB_RUNNER_LABELS (echo %GITHUB_RUNNER_LABELS% >> "Program Files\GITHub\actions-runner\config.dat") else (echo. >> "Program Files\GITHub\actions-runner\config.dat")) `
    && (if defined GITHUB_RUNNER_WORKFOLDER (echo %GITHUB_RUNNER_WORKFOLDER% >> "Program Files\GITHub\actions-runner\config.dat") else (echo. >> "Program Files\GITHub\actions-runner\config.dat")) `
    && echo N >> "Program Files\GITHub\actions-runner\config.dat" `
    && "%ProgramFiles%\\GITHub\\actions-runner\\config.cmd" --url "%GITHUB_RUNNER_URL%" --token "%GITHUB_RUNNER_TOKEN%" --replace --disableupdate < "%ProgramFiles%\\GITHub\\actions-runner\\config.dat" `
    && echo. `
    && echo. `
    && echo Finishing registration (please wait) ... `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }"


ENTRYPOINT ["C:\\Program Files\\GITHub\\actions-runner\\run.cmd"]
