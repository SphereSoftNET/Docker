# Docker image files

- [Microsoft .NET Framework SDK 4.8 with Text Templating (T4) on Windows Server Core 2019 and GIT](##microsoft-net-framework-sdk-48-with-text-templating-t4-on-windows-server-core-2019-and-git)
- [Microsoft .NET Framework SDK 4.8 with Text Templating (T4) on Windows Server Core 2019](#microsoft-net-framework-sdk-48-with-text-templating-t4-on-windows-server-core-2019)



## [Microsoft .NET Framework SDK 4.8 with Text Templating (T4) on Windows Server Core 2019 and GIT](#)

The image file [Dockerfile.net.framework.sdk.4.8.T4.GIT.2019](Dockerfile.net.framework.sdk.4.8.T4.GIT.2019)
is an extension to [Dockerfile.net.framework.sdk.4.8.T4.2019](Dockerfile.net.framework.sdk.4.8.T4.2019) ([docker.io/spheresoftnet/net.framework.sdk:4.8.T4.2019](https://hub.docker.com/layers/spheresoftnet/net.framework.sdk/4.8.T4.2019/images/sha256-1253b2b6895ac8a80c9cfb060cbfce5eb3c2226f666390bd7a44c16f552f1c10)).

We have [added](Dockerfile.net.framework.sdk.4.8.T4.GIT.2019#L8-L12) [GIT 2.41.0.3](https://github.com/git-for-windows/git/releases/download/v2.41.0.windows.3/Git-2.41.0.3-64-bit.exe) for Windows (64bit).

| Component           | Version      |
| ---                 | :-:          |
| Windows Server Core | 10.0.17763.4737<br/>2019 - LTSC |
| .NET Framework SDK  | 4.8          |
| MSBuild<br/>*.NET desktop build tools*<br/>*Web Development build*<br/>*Text Template Transformation*| 17.7.2.37605 |
| NuGet               | 6.6.1        |
| GIT                 | 2.41.0.3<br/>Windows 64-bit |

[![docker.com/spheresoftnet/net.framework.sdk:4.8.T4.GIT.2019](https://www.docker.com/wp-content/uploads/2023/04/cropped-Docker-favicon-32x32.png) docker.io/spheresoftnet/net.framework.sdk:4.8.T4.GIT.2019](https://hub.docker.com/layers/spheresoftnet/net.framework.sdk/4.8.T4.GIT.2019/images/sha256-1f1dc70d666020b22eac3868c680aa1e4921b071ca1a1f74464d8c61be141023)



## [Microsoft .NET Framework SDK 4.8 with Text Templating (T4) on Windows Server Core 2019](#)

The image file [Dockerfile.net.framework.sdk.4.8.T4.2019](Dockerfile.net.framework.sdk.4.8.T4.2019)
based on Microsoft SDK .NET Framework SDK 4.8 (for Windows Server Core 2019 - LTSC)
mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 .

We have [added](Dockerfile.net.framework.sdk.4.8.T4.2019#L16-L20) the MS Build 17.0 Component "Microsoft.VisualStudio.Component.TextTemplating" (T4), see also
[Visual Studio Build Tools component directory](https://learn.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools?view=vs-2022).

| Component           | Version      |
| ---                 | :-:          |
| Windows Server Core | 10.0.17763.4737<br/>2019 - LTSC |
| .NET Framework SDK  | 4.8          |
| MSBuild<br/>*.NET desktop build tools*<br/>*Web Development build*<br/>*Text Template Transformation*| 17.7.2.37605 |
| NuGet               | 6.6.1        |

[![docker.io/spheresoftnet/net.framework.sdk:4.8.T4.2019](https://www.docker.com/wp-content/uploads/2023/04/cropped-Docker-favicon-32x32.png) docker.io/spheresoftnet/net.framework.sdk:4.8.T4.2019](https://hub.docker.com/layers/spheresoftnet/net.framework.sdk/4.8.T4.2019/images/sha256-1253b2b6895ac8a80c9cfb060cbfce5eb3c2226f666390bd7a44c16f552f1c10)



<!-- FOOTER -->
<hr style="height: 1px" />
<a href="http://spheresoft.net" style="font-size: 0.7em; float: right">spheresoft.net</a>
