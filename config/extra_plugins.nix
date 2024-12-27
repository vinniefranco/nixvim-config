{ pkgs, ... }:
let
  oil-gitstatus = pkgs.vimUtils.buildVimPlugin {
    name = "oil-gitstatus";
    src = pkgs.fetchFromGitHub {
      owner = "refractalize";
      repo = "oil-git-status.nvim";
      rev = "839a1a287f5eb3ce1b07b50323032398e63f7ffa";
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
    { plugin = oil-gitstatus; }
    { plugin = pkgs.vimPlugins.vim-dadbod; }
    { plugin = pkgs.vimPlugins.vim-dadbod-ui; }
    { plugin = pkgs.vimPlugins.vim-dadbod-completion; }
  ];
}
