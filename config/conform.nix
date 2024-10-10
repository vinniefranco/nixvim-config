{
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          javascript = [ "prettier" ];
          "_" = [ "trim_whitespace" ];
        };
        notify_on_error = true;
        format_on_save = {
          lspFallback = true;
          timeoutMs = 2000;
        };
      };
    };
  };
}
