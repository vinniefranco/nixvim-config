{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "enter";
        };
        sources = {
          compat = [ ];
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
          ];
          cmdline = [ ];
        };
        trigger = {
          signature_help = {
            enabled = true;
          };
        };

        opts_extend = [
          "sources.completion.enabled_providers"
          "sources.compat"
          "sources.default"
        ];
        windows = {
          documentation = {
            auto_show = true;
          };
        };
      };
    };
  };
}
