{
  plugins = {
    treesitter = {
      enable = true;
      settings.hightlight = {
        enable = true;
        disable = [ "regex" ];
        ident = true;
      };
    };
    treesitter-context = {
      enable = true;
      settings = {
        max_line = 2;
      };
    };
  };
}
