{ pkgs, ... } : {
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
          "_" = [ "squeeze_blanks" "trim_whitespace" "trim_newlines" ];
        };
        notify_on_error = false;
        format_on_save = { timeout = 500; };
        formatters = {
          squeeze_blanks = {
            command = pkgs.lib.getExe' pkgs.coreutils "cat";
          };
        };
      };
    };
  };
}
