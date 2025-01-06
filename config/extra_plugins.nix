{ pkgs, ... }:
let
  oil-gitstatus = pkgs.vimUtils.buildVimPlugin {
    name = "oil-gitstatus";
    src = pkgs.fetchFromGitHub {
      owner = "refractalize";
      repo = "oil-git-status.nvim";
      rev = "a7ea816bac0cc3b8b4c3605e2f2b87960be60a05";
      hash = "sha256-pTAvkJPmT3eD3XWrYl6nyKSzeRFEHOi8iDCamF1D1Cg=";
    };
  };
in
{
  extraPlugins = [
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
    # { plugin = oil-gitstatus; }
    { plugin = pkgs.vimPlugins.vim-dadbod; }
    { plugin = pkgs.vimPlugins.vim-dadbod-ui; }
    { plugin = pkgs.vimPlugins.vim-dadbod-completion; }
  ];
}
