# escape=`

# <summary>
# Docker image create GITHub Actions Runner with self register at run
# </summary>
# <param name="BASE_IMAGE">Base image</param>
# <param name="BASE_DIGEST">Base digest (for documentation only)</param>
# <param name="GITHUB_RUNNER_VERSION">GITHub Actions Runner Version</param>
# <revisionHistory>
#   <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
# </revisionHistory>


ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019

FROM ${BASE_IMAGE}

ARG BASE_IMAGE=docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019
ARG BASE_DIGEST=sha256:09409f04b5a83daea9ba1f0fb16c4ec6c588ebfc0f2bb4a3d5323291bd821b7f
ARG GITHUB_RUNNER_VERSION=2.308.0


ENV GITHUB_RUNNER_VERSION=${GITHUB_RUNNER_VERSION}


LABEL org.opencontainers.image.description="GITHub Runner ${GITHUB_RUNNER_VERSION} self register by run"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/github"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/github/runner-2.308.0/Dockerfile"
LABEL org.opencontainers.image.base.name="${BASE_IMAGE}"
LABEL org.opencontainers.image.base.digest="${BASE_DIGEST}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.20"
LABEL org.opencontainers.image.created="2023-08-20"


SHELL ["cmd", "/S", "/C"]


# Install GITHub Runner
RUN echo Resolving / Downloading ... `
    && curl -fSLo actions-runner-win-x64.zip https://github.com/actions/runner/releases/download/v%GITHUB_RUNNER_VERSION%/actions-runner-win-x64-%GITHUB_RUNNER_VERSION%.zip `
    && echo Installing ... `
    && "Program Files\7-Zip\7z" x actions-runner-win-x64.zip -o"Program Files\GITHub\actions-runner" `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del actions-runner-win-x64.zip


ADD ["NET.SphereSoft.GITHub.Actions.Runner.Start.cmd", "Program Files\\GITHub\\actions-runner\\NET.SphereSoft.GITHub.Actions.Runner.Start.cmd"]


ENTRYPOINT ["Program Files\\GITHub\\actions-runner\\NET.SphereSoft.GITHub.Actions.Runner.Start.cmd"]
