# nixvim-config

A declarative Neovim configuration built with [NixVim](https://github.com/nix-community/nixvim) and Nix Flakes. Designed for Rust and web development with integrated testing, debugging, and AI-assisted coding.

## Overview

This configuration uses NixVim to define the entire Neovim setup in Nix, producing a reproducible, self-contained editor across Linux and macOS (x86_64 and aarch64).

## Structure

```
flake.nix              # Flake entrypoint and inputs
config/
  default.nix          # Imports all modules
  opts.nix             # Core editor options
  keymaps.nix          # Custom key bindings
  colorscheme.nix      # OneDark theme with transparency
  lsp.nix              # Language server configuration
  blink.nix            # Completion engine (blink-cmp)
  fzf-lua.nix          # Fuzzy finder
  treesitter.nix       # Syntax highlighting and parsing
  rust.nix             # Rust tooling (rustaceanvim, DAP, crates)
  neotest.nix          # Test runner (Rust, Elixir, Jest)
  oil.nix              # File explorer
  bufferline.nix       # Buffer tabs
  basic_plugins.nix    # General-purpose plugins
  extra_plugins.nix    # Custom/third-party plugins
  claude-code.nix      # Claude Code integration
  lightbulb.nix        # Code action indicator
  markview.nix         # Markdown preview
config/lua/            # Supplementary Lua configuration
```

## Features

### Language Support

LSP servers are configured for:

- **Rust** -- rustaceanvim with rust-analyzer, Clippy on save, full inlay hints, and CodeLLDB debugging via DAP
- **Web** -- TypeScript, JavaScript, HTML (with Heex template support), CSS, Tailwind CSS, ESLint, Emmet
- **Elixir** -- expert-ls (custom flake input)
- **Nix** -- nixd
- **Other** -- Bash, C/C++ (clangd), Lua, Terraform, TOML, JSON, QML, Nushell

### Completion

Uses blink-cmp with sources ordered as: Codeium (AI), LSP, path, snippets, buffer. Auto-brackets and documentation popups are enabled.

### Fuzzy Finding

fzf-lua provides quick access to git files, live grep, buffers, command history, LSP definitions/references, and treesitter symbols. All mapped under `<leader>f`.

### Testing

Neotest with adapters for Rust, Elixir, and Jest. Test results display in a bottom output panel.

### File Navigation

- Oil.nvim as a git-aware file explorer (opened with `-`)
- Flash.nvim for jump navigation (triggered with `s`)
- Navigator.nvim for seamless split movement (`<C-h/j/k/l>`)

### UI

- OneDark colorscheme with transparency
- Lualine statusline
- Bufferline for buffer tabs
- Gitsigns for inline git blame and hunk indicators
- Indent-blankline for visual indentation guides
- Mini-cmdline and mini-notify for a minimal command/notification UI
- Treesitter context (shows enclosing function/block, 2 lines max)

### Additional Tools

- DAP (Debug Adapter Protocol) with UI and virtual text for Rust debugging
- vim-dadbod for database interaction
- Direnv integration
- Claude Code plugin for AI assistance
- Spell checking (English US)

## Key Bindings

Leader key is `<Space>`.

| Binding | Mode | Action |
|---|---|---|
| `<leader>ff` | Normal | Find git files |
| `<leader>fg` | Normal | Live grep |
| `<leader>fb` | Normal | Open buffers |
| `<leader>fd` | Normal | LSP definitions |
| `<leader>fr` | Normal | LSP references |
| `<leader>ft` | Normal | Treesitter symbols |
| `<leader>fh` | Normal | Command history |
| `<leader>tt` | Normal | Run test file |
| `<leader>ts` | Normal | Run single test |
| `<leader>to` | Normal | Toggle test output |
| `<leader>m` | Normal | Format buffer (LSP) |
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to references |
| `gi` | Normal | Go to implementation |
| `gt` | Normal | Go to type definition |
| `gca` | Normal | Code actions |
| `K` | Normal | Hover documentation |
| `s` | Normal/Visual/Operator | Flash jump |
| `-` | Normal | Open Oil file explorer |
| `<C-h/j/k/l>` | Normal/Terminal | Navigate splits |

## Usage

### Build and run

```sh
nix run .
```

### Use as an overlay or input in another flake

```nix
{
  inputs.nixvim-config.url = "github:vinniefranco/nixvim-config";
}
```

## Requirements

- [Nix](https://nixos.org/) with flakes enabled
