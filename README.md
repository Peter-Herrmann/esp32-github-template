# ESP32 Template Project

![Build Status](https://github.com/Peter-Herrmann/esp32-github-template/actions/workflows/build.yml/badge.svg)

This repository serves as a template for ESP32 based systems with GitHub Actions integration.

---

## 🛠️ Environment Setup

### Linux

📦 **Docker Extension in VSCode**: The simplest method to set up on Linux is to install the Docker extension in Visual Studio Code.

### Windows

#### 1. Setting up WSL 2 (Using Debian)

- 🔽 **Download Debian for WSL**: Visit the [Microsoft Store](https://apps.microsoft.com/store/detail/debian/9MSVKQC78PK6) to download Debian for the Windows Subsystem for Linux (WSL).
  
- 🚀 **Initial Setup**:
    - Launch the Debian application and follow the on-screen instructions to set up a username and password.
    - Close Debian and open a Windows Powershell session.
    - Transition Debian to WSL 2 by running:
        ```bash
        wsl --set-version Debian 2
        ```
    - Confirm the transition by checking the version:
        ```bash
        wsl --list --verbose
        ```

#### 2. Docker Installation & Integration

- 🔽 **Download Docker Desktop**: Head over to the [official site](https://docs.docker.com/desktop/install/windows-install/) and download Docker Desktop for Windows. 
    - During installation, ensure **Use WSL 2 instead of Hyper-V** is selected.
    
- ⚙️ **Integration with Debian**:
    - Launch Docker Desktop, sign in, and navigate to **Settings > Resources > WSL Integration**. Ensure **Debian** is enabled.
    - Restart any active Debian (WSL) terminals. Open a new Debian terminal and check the docker version to confirm successful integration:
        ```bash
        docker --version
        ```
---

## 🚀 Usage

1. **Configuration**: Set up the project configurations.
    ```bash
    make config
    ```

2. **Build**: Compile the firmware image.
    ```bash
    make build
    ```

3. **Clean**: Remove any build artifacts.
    ```bash
    make clean
    ```

---

💡 **Note**: Always refer to the official documentation for each tool or software to address any troubleshooting needs or updates.

---
