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
    Warning: In Active development all features have not been implemented yet!
    <img src="https://raw.githubusercontent.com/NoahBRostant/chess_cli/43dd77e3cfe378fa3d169cda25df1f0687690ca7/img/triangle-exclamation-solid.svg" width="20px" height="auto">
</p>
Experience the straightforward charm of your chess terminal game, developed in the Gleam language. This no-frills application offers a clean and functional interface for playing chess right in your terminal. Designed with simplicity in mind, it ensures smooth and reliable gameplay, making it easy to focus on strategy without distractions. Whether you're playing against a basic AI or a friend, this game provides a solid and dependable chess experience, leveraging Gleam's type-safe reliability to keep things running smoothly.


## Installation and Running
To install and run the program you need to ensure you have Gleam installed on your system. After which you can clone this repo enter the repo folder and type `gleam run` to run the game.

#### Linux, MacOS, and Windows
1. Install [Gleam](https://gleam.run/getting-started/installing/) and [Git](https://git-scm.com/downloads)
2. Clone Repo `git clone https://github.com/NoahBRostant/chess_cli.git`
3. Enter Directory `cd chess_cli`
4. Run Program `gleam run`

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```

#### Development Sidenote
all of the programing on this program has been done solely on my phone using termux. My configuration uses Zodite, Yazi, and NeoVIM.

For my NeoVIM config im using NVChad with some extras; yazi.nvim, and lazygit.nvim.

Im using the JetBrainsMono NF font for my terminal font and im loving the code anywhere mentality. Og course i also have Gleam installed and enabled withing the LSP and TreeSitter.
