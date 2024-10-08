<div style="text-align: center;">

![LOGO](assets/cuy-256.png)
# Psychoanalyst

</div>

![Maintenance](https://img.shields.io/maintenance/yes/2024)

---

Proyecto para análisis de exámenes psicológicos.

---

## Tech Stack

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)
![DearPyGUI](https://img.shields.io/badge/dearpygui-white.svg?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHNoYXBlLXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiB2aWV3Qm94PSIwIDAgNzAgMzAwIj48ZyBzdHJva2Utd2lkdGg9IjAiIHRyYW5zZm9ybT0ibWF0cml4KC41IDAgMCAuNSAtMzQuMTkxIC02LjUxKSI+PHJlY3Qgd2lkdGg9IjY3LjkxMiIgaGVpZ2h0PSIxNTguODI0IiBmaWxsPSIjMDA3OGM4IiByeD0iMCIgcnk9IjAiIHRyYW5zZm9ybT0icm90YXRlKDQ1IC0xNDEuODc4IDMwNS40Nzgpc2NhbGUoLjczNjI1IC45NDQ0NCkiLz48cmVjdCB3aWR0aD0iNjcuOTEyIiBoZWlnaHQ9IjE1OC44MjQiIGZpbGw9IiMwMGIwZjAiIHJ4PSIwIiByeT0iMCIgdHJhbnNmb3JtPSJyb3RhdGUoLTQ1IDEzNS4yNjMgLTQwLjY3OSlzY2FsZSguNzM2MjUgLjk0NDQ0KSIvPjxwYXRoIGZpbGw9IiMwMGIwZjAiIGQ9Im0xNzQuNDQ4IDE4OS43OTYgMzUuMzUtMzUuMzU1djcwLjcxek0xMDMuNzM3IDQ4LjM3NSA2OC4zODcgODMuNzNWMTMuMDJ6Ii8+PHBhdGggZmlsbD0iIzAwNzhjOCIgZD0ibTEwMy43MzggMzMxLjIxNi0zNS4zNSAzNS4zNTV2LTcwLjcxeiIvPjwvZz48ZyB0cmFuc2Zvcm09Im1hdHJpeCguNSAwIDAgLjUgLTM5LjY0NSAxMTguOTMpIj48cmVjdCB3aWR0aD0iNjcuOTEyIiBoZWlnaHQ9IjE1OC44MjQiIGZpbGw9IiNmYWU2YTAiIHJ4PSIwIiByeT0iMCIgdHJhbnNmb3JtPSJyb3RhdGUoNDUgMzkuMzMzIDI0NS44NDEpc2NhbGUoLjczNjI1IC45NDQ0NCkiLz48cmVjdCB3aWR0aD0iNjcuOTEyIiBoZWlnaHQ9IjE1OC44MjQiIGZpbGw9IiNjOGE1MTQiIHJ4PSIwIiByeT0iMCIgdHJhbnNmb3JtPSJyb3RhdGUoLTQ1IDMwNi4wNyAxNC42NClzY2FsZSguNzM2MjUgLjk0NDQ0KSIvPjxwYXRoIGZpbGw9IiNmYWU2YTAiIGQ9Im0xODUuMzU2IDQ0LjE5NCAzNS4zNS0zNS4zNTV2NzAuNzF6Ii8+PHBhdGggZmlsbD0iI2M4YTUxNCIgZD0ibTE4NS4zNTUgMzI2Ljc3NyAzNS4zNS0zNS4zNTV2NzAuNzF6Ii8+PHBhdGggZmlsbD0iI2ZhZTZhMCIgZD0ibTExNC42NDUgMTg1LjM1NS0zNS4zNSAzNS4zNTVWMTUweiIvPjwvZz48L3N2Zz4=)

## Building

![Poetry](https://img.shields.io/badge/Poetry-%233B82F6.svg?style=for-the-badge&logo=poetry&logoColor=0B3D8D)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)

## Installing

### Cross-platform

`python -m pip install psychoanalyst`

> Requieres python preinstaled

### Windows

Go to [Releases](https://github.com/IgnaciodelaTorreArias/psychoanalyst/releases) and download/run the `psychoanalyst.msi` file.

## How to launch

### Cross-platform

`python -m psychoanalyst`
or
`psychoanalyst`

### Windows

Shortcuts are automatically created by the msi.

## How to build

### Cross-platform

For cross-platform releases/builds use a `*.whl` file, so that you can install it by using:
```
python -m pip install *.whl
```

I recommend and use [Poetry](https://python-poetry.org/) for building the `*.whl` file, although there is an extra step (read the `pyproject.toml` file).

### Windows

This project is primarily designed for Windows users, who may or may not have Python installed. To facilitate the installation, the objective is to provide either a `*.msi` or `*.exe` installer.

#### Before building the installer

1. Package a python interpreter:
    
    Download `python-{version}-embed-{arch}.zip` from [Python](https://www.python.org/downloads/windows/).

2. Run the build script:

    ```
    ./scripts/build.ps1 python-{version}-embed-{arch}.zip
    ```

#### Using Advance installer

To build the installer, you will use the `*.aip` file included in the project. Follow these steps:

1. Install Advanced Installer (if not already installed).
    - Download from [Advanced Installer's website](https://www.advancedinstaller.com/)

2. Configure project:
    - Launch Advanced Installer.
    
    - Open the `.aip` file provided in the project directory.
    
    - Configure the installer as needed.

3. Build:
    - Click on the “Build” button in Advanced Installer.

