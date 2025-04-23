# Standard Developer Experience

Imagine that a new developer joins the product team and clones the repository for a new product that has been in development for a year. The developer is pointed to a `README` document that provides steps that the developer needs to follow in order to build and run the product. The developer may need to create a database, create the database schema, and load test data. If the product uses a microservice architecture, the developer may have to build, configure, and run each service. If there are dependencies, the developer needs to know how to download, install, and configure each dependency. Or if it's not a developer, it could be a project stakeholder, a consultant, or a different team that needs to build and run the product from source code.

Instead of having each person that needs to build and run the product from source code read through long documents and step-by-step instructions, make it easy by providing a standard, automated way to complete common tasks. And instead of having different programs for each task, use a single command as the entrypoint to performing automated tasks. By using a standardized and automated approach, developers, stakeholders, and others can jump into new code bases they do not know and be productive in seconds using the standardized automation interface.

## Use a `go` Script

You are a developer new to a project. You have just cloned the project locally to your development laptop. You have not read the `README` yet or any project documentation, but you want to get started. Following Neudesic's Standard Developer Experience, you expect there to be a `go` program in the root directory of the repository. Further, you know by convention that there's a `setup` subcommand that you should run immediately after cloning the repository. If you are on a Mac or running Linux, you would open a terminal and run:

    ./go setup

On Microsoft Windows, you would run:

    go.bat setup

The `setup` subcommand does any local configuration of the repository. It might use package managers like NuGet or NPM to download and install dependencies needed for development. It might use code generators to generate either source code or Project files that you need to open, build, and run the product in an IDE.

Once the repository is ready for development, you run `go build` to build the software locally. After it's built, you run `go test` to run the unit test suite to make sure that there are no errors being reported. Now, you're ready to go and see the product. You run `go start` to run the product. The `go start` command starts the backend servers and then opens a web browser that you can use to explore the product and its features.

What did you not need to know about or perform in this scenario?

1. You did not need to know how to install dependencies or configure your development environment. That was automated by `go setup`.
2. You did not need to know what programming languages to use to build the applications or what the command line commands you needed to build the product, or the order that dependencies needed to be built. This was automated by `go build`.
3. You did not need to know how to run the unit test suite. This was automated by `go test`.
4. You did not need to know how to create a database, create the schema, load the sample data, or in what order to start the microservice-based backend. This was automated by `go start`.

You later need to work on a user story to build an integration between your product and a product being produced by another team. You product needs to call an API exposed by the other product and you want to develop and test the integration locally. You clone the repository of the other product, open a terminal, and run:

1. `go setup`
1. `go start`

The other product starts up and is now running. You can go back to your code and start developing the integration.

In this scenario, many important details were hidden. To build, test, and run both products you did not have to have any knowledge of how to build the product, run the unit tests, or start and run the product in order to successfully get both products running. Instead of having to read any documentation, you used your knowledge of the Standard Developer Experience to build and run the product in just a few minutes.

## Create a `go` Command

The `go` command can be as simple as a shell script (Apple macOS/Linux) or Batch program (Microsoft Windows). The `go` program can have all of the logic inside of it, or it can be a light wrapper that dispatches to other programs to do the work. For example, if you run `go` by itself, it may execute a default command like building and running the program or it may display usage information showing you the commands that are available for you to run.

For example, this shell script will look for a program named `go-setup` in the `bin` subdirectory to execute for the `go setup` command:

```bash
#!/bin/bash

# Check if an argument was provided
if [ $# -eq 0 ]; then
  echo "Error: No command specified."
  echo "Usage: $0 command"
  exit 1
fi

# Get the command from the first argument
command_arg="$1"
executable="go-$command_arg"

# First check if the executable exists in the bin subdirectory
if [ -x "./bin/$executable" ]; then
  echo "Executing local ./bin/$executable..."
  "./bin/$executable"
  exit $?
fi

# If not in local bin, check if it exists in PATH
if command -v "$executable" &> /dev/null; then
  echo "Executing $executable from PATH..."
  "$executable"
  exit $?
else
  echo "Error: Command '$executable' not found or not executable."
  exit 127
fi
```

To support developers using Microsoft Windows, you could create a `go.bat` Batch script:

```batch
@echo off
setlocal enabledelayedexpansion

:: Check if an argument was provided
if "%~1"=="" (
  echo Error: No command specified.
  echo Usage: %0 command
  exit /b 1
)

:: Get the command from the first argument
set "command_arg=%~1"
set "executable=go-%command_arg%"

:: First check if the executable exists in the bin subdirectory
if exist ".\bin\%executable%.exe" (
  echo Executing local .\bin\%executable%...
  ".\bin\%executable%"
  exit /b %errorlevel%
) else if exist ".\bin\%executable%.bat" (
  echo Executing local .\bin\%executable%.bat...
  ".\bin\%executable%.bat"
  exit /b %errorlevel%
) else if exist ".\bin\%executable%.cmd" (
  echo Executing local .\bin\%executable%.cmd...
  ".\bin\%executable%.cmd"
  exit /b %errorlevel%
)

:: If not in local bin, check if it exists in PATH
where /q "%executable%"
if %errorlevel% equ 0 (
  echo Executing %executable% from PATH...
  "%executable%"
  exit /b %errorlevel%
) else (
  echo Error: Command '%executable%' not found or not executable.
  exit /b 127
)
```

If you want to implement certain commands using tools such as Node.js or Powershell, you can do that in the script as well:

```bash
case $1 in
    setup)
        node bin/setup.js
    start)
        pwsh -File bin/start.ps
    # ...
    # Other commands
    # ...
esac
```

## What Are the Benefits of `go` Scripts Over `README` Documents?

The use of `go` scripts have several advantages over `README` documents:

1. __Documents go stale.__ `go` scripts will typically be used frequently by developers and will evolve as the product does. `go` scripts should never go stale.
1. __`go` scripts as documentation.__ Do you need to understand how a product is built, how unit tests are run, or the proper way of running a product? Read the `go` scripts.
1. __From zero to running in seconds.__ New developers (or anyone that wants to run your product) does not need to spend a long time reading through documentation describing a complex process. Instead, they just clone the repository and run `go start` with the minimal amount of knowledge of the repository and the source code that is necessary to successfully get the product to run.

## Standard Commands

`go` scripts can support any number of commands, but as a matter of convention and to ease onboarding, the following standard commands should be considered a minimum requirement for all products:

- `go setup`: Should be run immediately after cloning a Git repository. The `setup` subcommand will do any actions necessary to make the local repository ready for development such as installing dependencies using package management tools like NPM or NuGet, or generating any source code or project files needed to build and run the product.
- `go help`: Should display general usage information and help information for developers. `go help` should list out all of the supported commands for the product.
- `go build`: Should build the product from source code.
- `go test`: Should run all of the unit tests for the product.
- `go start`: Should run the product. If the product has not been built, `go start` should also build the latest version of the product from source code before running the product.
