# Docker image files

- [Microsoft .NET Framework SDK 4.8 with Text Templating (T4) on Windows Server Core 2019](#microsoft-net-framework-sdk-48-with-text-templating-t4-on-windows-server-core-2019)



## [Microsoft .NET Framework SDK 4.8 with Text Templating (T4) on Windows Server Core 2019](#)

The image file [Dockerfile.net.framework.sdk.4.8.T4.2019](Dockerfile.net.framework.sdk.4.8.T4.2019)
based on the original [build instructions](https://github.com/microsoft/dotnet-framework-docker/blob/main/src/sdk/4.8/windowsservercore-ltsc2019/Dockerfile)
from the Microsoft Dockerfile of mcr.microsoft.com/dotnet/framework/sdk:4.8 for Windows Server Core
2019.

We have [added](Dockerfile.net.framework.sdk.4.8.T4.2019#L40) the MS Build 17.0 Component "Microsoft.VisualStudio.Component.TextTemplating" (T4), see also
[Visual Studio Build Tools component directory](https://learn.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools?view=vs-2022).



<!-- FOOTER -->
<hr style="height: 1px" />
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>

