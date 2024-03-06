# TestAntSat :satellite:

Welcome to the repository hosting code for _testing_ NASA's F' Flight Software and Embedded Systems Framework ([Link Here](https://nasa.github.io/fprime)) for [UCI CubeSat](https://projects.eng.uci.edu/projects/2023-2024/uci-cubesat)

Here's a short guide on how to get started and get to work with this repository.

### Contents

- [Downloading Dependencies](#downloading-dependencies)
- [First-Time Setup](#first-time-setup)
- [Running The Application](#running-the-application)

## Downloading Dependencies

The following dependencies must be installed to properly run this code:

- `git 2.44.0+`
- `Docker CLI`
  - For Mac Users, run: `brew install docker`
  - For Linux Users, run: `sudo apt-get install docker`
  - For Windows Users, run the `sudo` command in [WSL](https://learn.microsoft.com/en-us/windows/wsl/about)
- [`Docker Desktop`](https://www.docker.com/get-started/)
  - [Docker Quickstart Guides](https://www.docker.com/get-started/)

## First-Time Setup

This repository contains quickstart scripts to simplify setup. These scripts run natively on MacOS and Linux, but _require_ WSL for windows. See the points under "Docker CLI" to install.

#### **Make sure Docker Desktop is running on your machine before running anything below**

To set up the app on your local machine, do the following:

```bash
git clone https://github.com/UCI-CubeSat/fprime-proto.git
# and
cd fprime-proto
# and
./Scripts/setup.sh
```

This will set up the Docker container. Once that is complete, type `exit` in the prompted shell, so you can leave the container locally.

Next, install the [Microsoft Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) VSCode extension, so you can edit files on the Docker container without Vim.

Next, we will restart the Docker container now that it is set up.

```bash
./Scripts/start.sh
```

Once that is done, click the icon that looks like a stacked `><` at the very bottom left of your VSCode window, then click `Attach to Running Container`, then click the `fpp-config` container.

Once you're in, make sure you are in the `/usr/src/fprime-proto` directory (if not, just click `Open Folder` and go there), then you can run

```bash
./Scripts/build.sh
```

to make sure that the application can be built on your computer!

Nice work, you're done setting up Docker!

## Running the Application

Run Docker Desktop, and then `./Scripts/start.sh`, and attach the running container to VSCode, and you're in!

F' is a large framework, so there's a _lot_ here to tackle. For best information on generating new components, deployments, Ground Station configurations, and more, refer to the official [F' website](https://nasa.github.io/fprime).

One thing to know is you can always run the F' Ground Station (GDS) by doing the following command in a deployment directory:

```bash
fprime-gds
```
