{
  plugins.noice = {
    enable = true;
    settings = {
      lsp.override = {
        "cmp.entry.get_documentation" = false;
        "vim.lsp.util.convert_input_to_markdown_lines" = false;
        "vim.lsp.util.stylize_markdown" = false;
      };
      commands = {
        errors = {
          filter = {
            error = true;
          };
          filter_opts = {
            reverse = true;
          };
          opts = {
            enter = true;
            format = "details";
          };
          view = "popup";
        };
        history = {
          filter = {
            any = [
              { event = "notify"; }
              { error = true; }
              { warning = true; }
              {
                event = "msg_show";
                kind = [ "" ];
              }
              {
                event = "lsp";
                kind = "message";
              }
            ];
          };
          opts = {
            enter = true;
            format = "details";
          };
          view = "split";
        };
        last = {
          filter = {
            any = [
              { event = "notify"; }
              { error = true; }
              { warning = true; }
              {
                event = "msg_show";
                kind = [ "" ];
              }
              {
                event = "lsp";
                kind = "message";
              }
            ];
          };
          filter_opts = {
            count = 1;
          };
          opts = {
            enter = true;
            format = "details";
          };
          view = "popup";
        };
      };

    };
  };
}
