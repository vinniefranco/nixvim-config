{ pkgs, ... }:

{
  extraConfigLua = ''
    require'lspconfig'.html.setup{
      filetypes = { "html", "heex" }
    }
  '';

  plugins = {
    dap.enable = true;
    dap-ui.enable = true;
    dap-virtual-text.enable = true;

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
        qmlls.enable = true;
        taplo.enable = true;
        tailwindcss.enable = true;
        terraformls.enable = true;
        slint_lsp.enable = true;
        jsonls.enable = true;
        lexical = {
          enable = true;
          filetypes = [
            "elixir"
            "eelixir"
            "heex"
          ];
          cmd = [ "${pkgs.lexical}/bin/lexical" ];
        };
      };
    };

    lspkind = {
      enable = true;

      cmp = {
        enable = false;

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
