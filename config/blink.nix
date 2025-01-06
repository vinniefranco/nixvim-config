{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "enter";
        };
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
            };
          };
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
        };
        sources = {
          default = [
            "codium"
            "lsp"
            "path"
            "snippets"
            "buffer"
          ];
          providers = {
            codium = {
              name = "codium";
              module = "blink.compat.source";
            };
          };
        };
      };
    };

    blink-compat = {
      enable = true;
      settings = {
        impersonate_nvim_cmp = true;
      };
    };
  };
}
