# Docker image as extension to .NET Framework SDK 4.8

Enhanced the Microsoft .NET Framework SDK 4.8 image with the component of
Text Templating (T4) {Microsoft.VisualStudio.Component.TextTemplating}.

The instruction can be used to add an other component to the SDK as well.



## Build arguments

| Argument | Default | Description |
| --- | --- | --- |
| BASE_IMAGE | mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 | Base image (FROM) |
| BASE_DIGEST | sha256:a6e1586b48076f988a1c8a25b4c3cdecd585c4f99497127bb3432f7d72262704 | Base digest (for documentation only) |
| MICROSOFT_VS_BUILD_TOOLS_VERSION | 17 | Microsoft Visual Studio Build Tools Version |
| MICROSOFT_VS_BUILD_TOOLS_COMPONENT | Microsoft.VisualStudio.Component.TextTemplating | Microsoft Visual Studio Build Tools Component |



<!-- FOOTER -->
<hr style="height: 1px" />
<span style="font-size: 0.7em">© SphereSoft.NET, Holger Boskugel, Berlin, Germany</span>
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
