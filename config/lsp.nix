{
  plugins = {
    lsp = {
      enable = true;
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
        lua-ls.enable = true;
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
  };
}
