@echo off

if defined SSN_GITHUB_RUNNER_GROUP      (echo %SSN_GITHUB_RUNNER_GROUP%      >  "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >  "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined SSN_GITHUB_RUNNER_NAME       (echo %SSN_GITHUB_RUNNER_NAME%       >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined SSN_GITHUB_RUNNER_LABELS     (echo %SSN_GITHUB_RUNNER_LABELS%     >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined SSN_GITHUB_RUNNER_WORKFOLDER (echo %SSN_GITHUB_RUNNER_WORKFOLDER% >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
rem Don't start as service
echo N >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"

call "%~dp0config.cmd" --url "%SSN_GITHUB_RUNNER_URL%" --token "%SSN_GITHUB_RUNNER_TOKEN%" < "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"
echo.

rem Cleanup token
set SSN_GITHUB_RUNNER_TOKEN=

"%~dp0run.cmd"
