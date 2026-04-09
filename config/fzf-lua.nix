{ pkgs, lib, ... }:
{
  plugins = {
    fzf-lua = {
      enable = true;

      settings = {
        files = {
          color_icons = true;
          file_icons = true;
          multiprocess = true;
        };
        previewers = {
          bat = {
            cmd = "bat";
            args = "--color=always --style=numbers,changes";
          };
        };
        winopts = {
          border = "rounded";
          backdrop = 60;
          height = 0.5;
        };
        keymap.fzf = {
          "ctrl-q" = "select-all+accept";
        };
      };

      keymaps = {
        "<leader>fb" = {
          action = "buffers";
          options = {
            silent = true;
            desc = "Fzf-Lua Open Buffers";
          };
        };
        "<leader>fd" = {
          action = "lsp_definitions";
          options = {
            silent = true;
            desc = "Fzf-Lua LSP Definitions";
          };
        };
        "<leader>ff" = {
          action = "git_files";
          options = {
            silent = true;
            desc = "Fzf-Lua Git Files";
          };
        };
        "<leader>fg" = {
          action = "live_grep";
          options = {
            silent = true;
            desc = "Fzf-Lua Grep";
          };
        };
        "<leader>fh" = {
          action = "history";
          options = {
            silent = true;
            desc = "Fzf-Lua History";
          };
        };
        "<leader>fr" = {
          action = "lsp_references";
          options = {
            silent = true;
            desc = "Fzf-Lua LSP References";
          };
        };
        "<leader>ft" = {
          action = "treesitter";
          options = {
            silent = true;
            desc = "Fzf-Lua Treesitter";
          };
        };
      };
    };
  };
}
