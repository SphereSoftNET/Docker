@echo off

rem <summary>
rem  Start GITHub Actions Runner with self register
rem  </summary>
rem  <param name="GITHUB_RUNNER_URL">GITHub Actions Runner URL (from create of runner, parameter "--url")</param>
rem  <param name="GITHUB_RUNNER_TOKEN">GITHub Actions Runner URL (from create of runner, parameter "--token")</param>
rem  <param name="GITHUB_RUNNER_GROUP">Optional GITHub Actions Runner Group; default empty</param>
rem  <param name="GITHUB_RUNNER_NAME">Optional GITHub Actions Runner Name; default COMPUTERNAME or generated</param>
rem  <param name="GITHUB_RUNNER_LABELS">Optional GITHub Actions Runner Labels; own labels, already existings are "windows" and "x64"</param>
rem  <param name="GITHUB_RUNNER_WORKFOLDER">Optional GITHub Actions Runner Work Folder; default "_work"</param>
rem  <remarks>GITHub Actions Runner will replace an existing runner with same name and will not be updated automatically</remarks>
rem  <revisionHistory>
rem    <revision version="2023.08.24" date="2023-08-24" author="Holger Boskugel, github.com/SphereSoftNET">Added "--replace --disableupdate" at registration and environment variables as registration report</revision>
rem    <revision version="2023.08.20" date="2023-08-20" author="Holger Boskugel, github.com/SphereSoftNET">Initial implementation</revision>
rem  </revisionHistory>

if defined GITHUB_RUNNER_GROUP      (echo %GITHUB_RUNNER_GROUP%      >  "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >  "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined GITHUB_RUNNER_NAME       (echo %GITHUB_RUNNER_NAME%       >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined GITHUB_RUNNER_LABELS     (echo %GITHUB_RUNNER_LABELS%     >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
if defined GITHUB_RUNNER_WORKFOLDER (echo %GITHUB_RUNNER_WORKFOLDER% >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg") else (echo. >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg")
rem Don't start as service
echo N >> "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"

call "%~dp0config.cmd" --url "%GITHUB_RUNNER_URL%" --token "%GITHUB_RUNNER_TOKEN%" --replace --disableupdate < "%~dp0NET.SphereSoft.GITHub.Actions.Runner.Start.cfg"
echo.

rem Cleanup token
set GITHUB_RUNNER_TOKEN=

"%~dp0run.cmd"
