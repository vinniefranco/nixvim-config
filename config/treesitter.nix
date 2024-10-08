{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      nixvimInjections = true;
      settings = {
        ident.enable = true;
        highlight.enable = true;
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
