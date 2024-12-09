{
  plugins = {
    treesitter = {
      enable = true;
      settings.hightlight = {
        enable = true;
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
