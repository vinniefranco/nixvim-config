{ pkgs, expert-ls-pkg, ... }:

{
  extraConfigLua = ''
    vim.lsp.config('html', {
      filetypes = { "html", "heex" }
    })
  '';

  plugins = {
    dap.enable = true;
    dap-ui.enable = true;
    dap-virtual-text.enable = true;

    lsp-format = {
      enable = true;
    };

    lsp = {
      enable = true;
      inlayHints = true;
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
        expert = {
          enable = true;
          package = expert-ls-pkg;
        };
        jsonls.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        nushell.enable = true;
        qmlls.enable = true;
        slint_lsp.enable = true;
        tailwindcss.enable = true;
        taplo.enable = true;
        terraformls.enable = true;
        ts_ls.enable = true;
      };
    };

    lspkind = {
      enable = true;
      cmp = {
        enable = false;
      };
      settings= {
        cmp = {
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
  };
}
