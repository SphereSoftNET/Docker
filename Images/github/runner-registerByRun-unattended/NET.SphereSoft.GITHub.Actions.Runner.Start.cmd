@echo off

call "%~dp0config.cmd" --unattended --url "%GITHUB_RUNNER_URL%" --token "%GITHUB_RUNNER_TOKEN%" < "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"
echo.

rem Cleanup token
set GITHUB_RUNNER_TOKEN=

"%~dp0run.cmd"
