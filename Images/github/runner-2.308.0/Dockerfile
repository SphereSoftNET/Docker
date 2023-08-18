# escape=`

FROM docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019


ENV SSN_GITHUB_RUNNER_VERSION=2.308.0


LABEL org.opencontainers.image.description="GITHub Runner 2.308.0"
LABEL org.opencontainers.image.authors="Holger Boskugel, github.com/SphereSoftNET"
LABEL org.opencontainers.image.vendor="SphereSoft.NET"
LABEL org.opencontainers.image.url="https://hub.docker.com/repository/docker/spheresoftnet/github"
LABEL org.opencontainers.image.source="https://github.com/SphereSoftNET/Docker/blob/master/Images/github/runner-2.308.0/Dockerfile"
LABEL org.opencontainers.image.base.name="docker.io/spheresoftnet/net.framework.sdk:4.8-T4-GIT-7Z-2019"
LABEL org.opencontainers.image.base.digest="a2f4f898d5f39480a2d18ee12ccfe146470838267a1838bdc08e2a6a94eb3c30"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="2023.08.18"
LABEL org.opencontainers.image.created="2023-08-18"


SHELL ["cmd", "/S", "/C"]


# Install GITHub Runner
RUN echo Resolving / Downloading ... `
    && curl -fSLo actions-runner-win-x64.zip https://github.com/actions/runner/releases/download/v%SSN_GITHUB_RUNNER_VERSION%/actions-runner-win-x64-%SSN_GITHUB_RUNNER_VERSION%.zip `
    && echo Installing ... `
    && "Program Files\7-Zip\7z" x actions-runner-win-x64.zip -o"Program Files\GITHub\actions-runner" `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del actions-runner-win-x64.zip


ADD ["NET.SphereSoft.GITHub.Actions.Runner.Start.cmd", "Program Files\\GITHub\\actions-runner\\NET.SphereSoft.GITHub.Actions.Runner.Start.cmd"]


ENTRYPOINT ["Program Files\\GITHub\\actions-runner\\NET.SphereSoft.GITHub.Actions.Runner.Start.cmd"]
