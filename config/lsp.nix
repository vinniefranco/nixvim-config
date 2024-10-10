{ pkgs, ... }:

{
  plugins = {
    dap = {
      enable = true;
      extensions = {
        dap-virtual-text.enable = true;
        dap-ui.enable = true;
      };
    };
    lsp = {
      enable = true;
      preConfig = ''
        local lsp_symbol = function(name, icon)
        vim.fn.sign_define(
          "DiagnosticSign" .. name,
          { text = icon, numhl = "Diagnostic" .. name, texthl = "Diagnostic" .. name }
        )
        end

        lsp_symbol("Error", "󰅙")
        lsp_symbol("Info", "")
        lsp_symbol("Hint", "󰌵")
        lsp_symbol("Warn", "")
      '';
      keymaps.lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        gca = "code_action";
      };
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        cssls.enable = true;
        eslint.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        taplo.enable = true;
        tailwindcss.enable = true;
        terraformls.enable = true;
        lexical = {
          enable = true;
          filetypes = [
            "elixir"
            "eelixir"
            "heex"
          ];
          rootDir = ''
            function(fname)
                          local lspconfig = require('lspconfig')
                          return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
                        end'';
          cmd = [ "${pkgs.lexical}/bin/lexical" ];
        };
      };
    };

    lspkind = {
      enable = true;

      cmp = {
        enable = true;

        menu = {
          buffer = "";
          calc = "";
          cmdline = "";
          codeium = "󱜙";
          emoji = "󰞅";
          git = "";
          luasnip = "󰩫";
          neorg = "";
          nvim_lsp = "";
          nvim_lua = "";
          path = "";
          spell = "";
          treesitter = "󰔱";
        };
      };
    };
  };
}
