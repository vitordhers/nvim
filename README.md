# Neovim Configuration

This repository contains my personal Neovim configuration, optimized for efficiency and a seamless development experience.

## Features
- Custom keybindings for better navigation
- Plugins for syntax highlighting, auto-completion, and linting
- Optimized for performance with lazy loading
- Configured with LazyVim as the plugin manager

## Installation
To use this configuration, clone the repository and set up the necessary dependencies:

```sh
git clone https://github.com/vitordhers/nvim.git ~/.config/nvim
```

Ensure you have Neovim installed and restart it to apply the settings.

## Plugins
This setup includes:
- __alpha.lua__: A fast and customizable dashboard for Neovim.
- __bufferline.lua__: Display buffers as tabs with support for mouse interaction.
- __catppuccin.lua__: A beautiful and pleasant color scheme for Neovim.
- __completions.lua__: Autocompletion plugin for an enhanced coding experience.
- __gitsigns.lua__: Shows git signs in the gutter to track changes.
- __lsp-config.lua__: Configures language server protocol (LSP) support for multiple languages.
- __lualine.lua__: A fast and customizable statusline plugin.
- __neo-tree.lua__: A modern file explorer that provides an easy way to navigate files.
- __none-ls.lua__: Integration for external linters and formatters with LSP.
- __nvim-autopairs.lua__: Auto-close pairs of brackets, parentheses, quotes, etc.
- __nvim-tmux-navigator.lua__: Navigate between tmux panes and Neovim windows seamlessly.
- __telescope.lua__: A fuzzy finder for Neovim that helps you search files, buffers, and more.
- __treesitter.lua__: Syntax highlighting and text objects for many languages.
- __vim-options.lua__: Configures various Neovim options for an optimal experience.

## LSP Support
The LSP configuration supports the following languages:

- __Rust__
- __TypeScript (+Deno)__
- __Bash__
- __Solidity__
- __Lua__

## Usage
Simply open Neovim and start coding:

```sh
nvim
```

## License
This configuration is open-source and free to use under the apache-2.0 license.

