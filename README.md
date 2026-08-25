# Tama Project

 [![TAM - Tama](https://img.shields.io/static/v1?label=TAM&message=Tama&color=b51839)](https://www.triamec.com/tam-tama.html)

Author and compile a Tama program using a C# project.

## Tooling

There are multiple options IDE and toolchain options to author and compile Tama programs.
You will need to have the `.NET SDK` installed to build Tama programs, which usually happens automatically when selecting a workload/configuration/setting for C#/.NET development in your IDE.
You can check your installation by typing `dotnet --version` in your command line.

### Headless

If you simply want to generate a Tama program from source code without changing it, you can do so by directly typing `dotnet build <your.sln or your.csproj>` into your command line. 
If you want to change the code however, we strongly recommend using a suitable IDE or editor, as it makes coding a lot more convenient.

### Visual Studio (2026 or other)

Powerful, professional tool for C#/.NET development. Could require a license, depending on your use case and the size of your organization.
Make sure to install the .NET-development workload.
Once installed, simply click on an `.sln` or `.csproj` file to open a solution or a project.
You can build the solution or project directly in the IDE in several ways.

### Visual Studio Code

Lightweight editor with loads of extensions to customize for your use case. We recommend installing a workload for C# development to enhance your coding experience.
To generate a Tama program, simply type `dotnet build <your.sln or your.csproj>` into the command line. You can also save this command via a script connected to a shortcut.

### Rider

Cross-platform .NET IDE from Jetbrains instead of Microsoft.
