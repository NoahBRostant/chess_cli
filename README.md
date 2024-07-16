<p align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)" srcset="https://github.com/NoahBRostant/chess_cli/blob/dev/img/chess_cli_logo_white.png?raw=true">
        <source media="(prefers-color-scheme: light)" srcset="https://github.com/NoahBRostant/chess_cli/blob/dev/img/chess_cli_logo_black.png?raw=true">
        <img alt="Chess_CLI">
    </picture>
</p>
<hr>
<p align="center">
    <img alt="Static Badge" src="https://img.shields.io/badge/Gleam-%23ffaff3">
    <img alt="GitHub Actions Workflow Status" src="https://img.shields.io/github/actions/workflow/status/NoahBRostant/chess_cli/test.yml">
</p>
<p align="center">
    <img src="https://raw.githubusercontent.com/NoahBRostant/chess_cli/43dd77e3cfe378fa3d169cda25df1f0687690ca7/img/triangle-exclamation-solid.svg" width="20px" height="auto">
    <b>Warning: In Active development all features have not been implemented yet!</b>
    <img src="https://raw.githubusercontent.com/NoahBRostant/chess_cli/43dd77e3cfe378fa3d169cda25df1f0687690ca7/img/triangle-exclamation-solid.svg" width="20px" height="auto">
</p>
Experience the straight forward charm of a chess terminal game, developed in the Gleam language. This no-frills application offers a clean and functional interface for playing chess right in your terminal. Designed with simplicity in mind, it ensures smooth and reliable gameplay, making it easy to focus on strategy without distractions. Whether you're playing against a basic AI or a friend, this game provides a solid and dependable chess experience, leveraging Gleam's type-safe reliability to keep things running smoothly.

## Features
- Clean Stylish ASCI UI.
- Simple Inputs.
- Local Hosting. *
- Framework for Implementing your own AI opponent. *


## Installation and Running
To install and run the program you need to ensure you have Gleam installed on your system. After which you can clone this repo, enter the repo folder, and type `gleam run` to run the game.

#### Linux, MacOS, and Windows
1. Install [Gleam](https://gleam.run/getting-started/installing/) and [Git](https://git-scm.com/downloads)
2. Clone Repo `git clone https://github.com/NoahBRostant/chess_cli.git`
3. Enter Directory `cd chess_cli`
4. Run Program `gleam run`

## Development

If youd like to help develop this project or build upon the work I've done you may want to clone the 'dev' branch. To do so run `git clone --single-branch -branch dev https://github.com/NoahBRostant/chess_cli.git`
```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```

#### Development Sidenote
All of the code written for this program has been done solely on my phone using termux, bar this readme file. My configuration uses Zoxide, Yazi, and NeoVIM.

For my NeoVIM config I'm using NVChad with some extras; lazygit.nvim.

Im using the JetBrainsMono NF font for my terminal font and I'm loving the code anywhere mentality. Of course I also have Gleam installed and enabled withing the LSP and TreeSitter.
