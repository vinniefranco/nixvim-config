{ pkgs, ... }:
let
  tiny_cmdline = pkgs.vimUtils.buildVimPlugin {
    name = "tiny-cmdline";
    src = pkgs.fetchFromGitHub {
      owner = "rachartier";
      repo = "tiny-cmdline.nvim";
      rev = "01519b13230d549380cee405c12062738240a11b";
      hash = "sha256-B5s/Hf0eHY4Igckry77KIxGhPytL16IyCraoyEr0QwM=";
    };
  };
in
{
  extraPlugins = [
    {
      plugin = tiny_cmdline;
      optional = true;
      config = ''
        packadd! vimplugin-tiny-cmdline
        lua << EOF
          vim.o.cmdheight = 0
          require('tiny-cmdline').setup()
        EOF
      '';
    }
    {
      plugin = pkgs.vimPlugins.Navigator-nvim;
      optional = true;
      config = ''
        packadd! Navigator.nvim
        lua << EOF
          require("Navigator").setup()
        EOF
      '';
    }
  ];
}
