{
  plugins.noice = {
    enable = true;
    settings = {
      lsp = {
        signature.enabled = true;
        progress.enabled = false;
        signature.view = "virtualtext";
        hover.view = "virtualtext";
        documentation.view = "virtualtext";
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
