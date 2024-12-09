{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        elixir
        markdown
        nix
        regex
        lua
        toml
        vim
        vimdoc
        yaml
      ];
      settings = {
        highlight.enable = true;
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
