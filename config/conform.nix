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
          "_" = [ "squeeze_blanks" "trim_whitespace" "trime_newlines" ];
        };
        notify_on_error = true;
        format_on_save = # Lua
          ''
            function(bufnr)
              if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
              end

              if slow_format_filetypes[vim.bo[bufnr].filetype] then
                return
              end

              local function on_format(err)
                if err and err:match("timeout$") then
                  slow_format_filetypes[vim.bo[bufnr].filetype] = true
                end
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

              if not slow_format_filetypes[vim.bo[bufnr].filetype] then
                return
              end

              return { lsp_fallback = true }
            end
          '';
      };
    };
  };
}
