@echo off

if defined GITHUB_RUNNER_GROUP      (echo %GITHUB_RUNNER_GROUP%      >  "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >  "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined GITHUB_RUNNER_NAME       (echo %GITHUB_RUNNER_NAME%       >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined GITHUB_RUNNER_LABELS     (echo %GITHUB_RUNNER_LABELS%     >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined GITHUB_RUNNER_WORKFOLDER (echo %GITHUB_RUNNER_WORKFOLDER% >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
rem Don't start as service
echo N >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"

call "%~dp0config.cmd" --url "%GITHUB_RUNNER_URL%" --token "%GITHUB_RUNNER_TOKEN%" < "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"
echo.

rem Cleanup token
set GITHUB_RUNNER_TOKEN=

"%~dp0run.cmd"
