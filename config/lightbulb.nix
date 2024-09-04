{
  plugins = {
    nvim-lightbulb = {
      enable = true;
      settings = {
        autocmd = {
          enabled = true;
          updatetime = 200;
        };
        float = {
          enabled = false;
          text = " 󰌶 ";
          win_opts = {
            border = "rounded";
          };
        };
        line = {
          enabled = false;
        };
        number = {
          enabled = false;
        };
        sign = {
          enabled = false;
          text = "󰌶";
        };
        status_text = {
          enabled = false;
          text = " 󰌶 ";
        };
        virtual_text = {
          enabled = true;
          text = "󰌶";
        };
      };
    };
  };
}
