{
  plugins = {
    dressing = {
      enable = true;
      settings.input.enabled = false;
    };
    snacks = {
      enable = true;
      settings = {
        dashboard = {
          enabled = true;

          preset = {
            keys = [
              {
                action = ":Telescope find_files";
                key = "f";
                icon = " ";
                desc = "Find File";
              }
              {
                action = ":ene | startinsert";
                key = "n";
                icon = " ";
                desc = "New File";
              }
              {
                action = ":qa";
                key = "q";
                icon = " ";
                desc = "Quit";
              }
            ];
          };

          sections = [
            {
              section = "header";
            }
            {
              section = "keys";
              gap = 1;
              padding = 1;
            }
            {
              icon = " ";
              title = "Recent Files";
              section = "recent_files";
              indent = 2;
              padding = 1;
            }
          ];
        };
        indent = {
          enabled = true;
        };
        input = { };
        notifier = { };
        scroll = { };
        words = { };
        bigfile = {
          enabled = true;
        };
      };
    };
    noice = {
      enable = true;

      settings = {
        lsp.override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
        };

        presets = {
          bottom_search = true;
          command_palette = true;
          long_message_to_split = true;
        };
      };
    };
  };

  keymaps = [
    {
      action = "<CMD>lua Snacks.gitbrowse()<CR>";
      key = "<leader>gB";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua Snacks.git.blame_line()<CR>";
      key = "<leader>gb";
      mode = [ "n" ];
    }
  ];
}
