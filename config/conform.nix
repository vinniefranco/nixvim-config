{ pkgs, ... }:
{
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        default_format_opts = {
          async = false;
          quiet = false;
          lsp_format = "fallback";
        };
        formatters_by_ft = {
          javascript = [ "prettier" ];
          "_" = [
            "squeeze_blanks"
            "trim_whitespace"
            "trim_newlines"
          ];
        };
        notify_on_error = false;
        format_on_save = # Lua
          ''
            function(bufnr)
              if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
              end

              return { timeout_ms = 200, lsp_fallback = true }, on_format
             end
          '';
        format_after_save = # Lua
          ''
            function(bufnr)
              if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
              end

              return { lsp_fallback = true }
            end
          '';
        formatters = {
          squeeze_blanks = {
            command = pkgs.lib.getExe' pkgs.coreutils "cat";
          };
        };
      };
    };
  };
}
