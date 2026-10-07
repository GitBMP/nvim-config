# Install

Setup notes for this Neovim config.

## Ubuntu (tested on 26.04 LTS in WSL)

```bash
# Tools the config needs
#   build-essential: C compiler for the treesitter parsers
#   unzip:           Mason needs it for clangd
#   nodejs, npm:     Mason needs them for pyright
sudo apt install -y build-essential git curl unzip nodejs npm

# Neovim 0.12 or newer (apt only has 0.11)
sudo snap install nvim --classic

# tree-sitter CLI, builds the treesitter parsers.
# In WSL this must be the Linux copy, otherwise nvim finds the Windows one and fails.
sudo npm install -g tree-sitter-cli

# The config itself
git clone https://github.com/GitBMP/nvim-config ~/.config/nvim
```

## First start

Open `nvim` in one window only and leave it open until everything has finished:

- lazy.nvim downloads the plugins
- Mason installs the language servers (check with `:Mason`)
- treesitter installs the parsers listed in `lua/plugins/treesitter.lua`

Quitting early cancels the installs, and they start over on the next launch.

## Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

`rust-analyzer` itself is installed by Mason.

## Windows

- Config folder: `%LOCALAPPDATA%\nvim`
- Needs `git`, `zig` (used as the C compiler through `bin\zig-cc.cmd`) and `npm install -g tree-sitter-cli`
