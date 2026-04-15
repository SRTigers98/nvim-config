# NeoVim Configuration

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)

My personal NeoVim configuration.

This configuration is based on this [blog post](https://www.josean.com/posts/how-to-setup-neovim-2024)
by [Josean Martinez](https://github.com/josean-dev).
Also some configurations and plugins are inspired by [NvChad](https://nvchad.com/)
which I used previously.

## Requirements

- **Neovim 0.12+**
- **[tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)** (≥ 0.26.1) — required by the treesitter plugin to compile language parsers from source.

  Install via pacman (Arch Linux):

  ```bash
  pacman -S tree-sitter-cli
  ```

  Install via Homebrew (macOS):

  ```bash
  brew install tree-sitter-cli
  ```

## Installation

Install the configuration by using one of the following commands:

- Via HTTPS

```bash
git clone https://github.com/SRTigers98/nvim-config ~/.config/nvim --depth 1
```

- Via SSH

```bash
git clone git@github.com:SRTigers98/nvim-config.git ~/.config/nvim --depth 1
```

Then you can open up NeoVim and all plugins and packages should be installed automatically.
This could take a while!

## Update

To update the configuration just use the **git pull** command to update the repository.
