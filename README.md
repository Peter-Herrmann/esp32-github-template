# ESP32

[![Build](https://github.com/Peter-Herrmann/esp32-github-template/actions/workflows/build.yml/badge.svg)](https://github.com/Peter-Herrmann/ESP32/actions/workflows/build.yml)

A template project for ESP32 based systems

## Environment Setup

### Linux

The easiest method is to install the docker extension in VSCode.

### Windows
---
1. Install WSL 2 (Debian shown)
    - Go to the Microsoft Store and download [Debian for the Windows Subsystem for Linux (WSL)](https://apps.microsoft.com/store/detail/debian/9MSVKQC78PK6)
    - Once downloaded, launch the Debian application on your computer and follow the prompts to create a username and password for WSL.
    - Once you complete setup, close Debian and open Windows Powershell. In Powersehll, enter `wsl --set-version Debian 2` to change debian from WSL 1 to WSL 2.
    - Verify Debian is running WSL 2 with `wsl --list --verbose`. The Debian version should be 2. 
---
2. Install Docker 
    - Install [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/)
      - Ensure **Use WSL 2 instead of Hyper-V** is checked during installation.
    - Open Docker Desktop for Windows, login, and navigate to **Settings > Resources > WSL Integration.** Make sure **Debian** is checked.
    - Close any active Debian (WSL) terminals, open a new Debian terminal and enter `docker --version`
      - If Docker and Debian were integrated successfully, you should see a version number.

### Downloading Espressif-IDF (All Operating Systems)

1. Run `docker pull espressif/idf` to install the latest version of [Espressif's IDF Docker image](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/tools/idf-docker-image.html) 

## Usage

1. Configure the project with `make config`
2. Build the firmware image with `make build`
3. Clean the project with `make clean`
