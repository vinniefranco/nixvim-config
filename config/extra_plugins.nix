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
  blink-cmp = pkgs.vimUtils.buildVimPlugin {
    name = "blink-cmp";
    src = pkgs.fetchFromGitHub {
      owner = "Saghen";
      repo = "blink.cmp";
      rev = "8632278fc56be58c1fe9efea00585dd2edd3e317";
      hash = "sha256-8yqGxh8kL5f7G9s5u+5Z2c2x0xZbWkT/5KZL6wOw6k=";
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
    {
      plugin = pkgs.vimPlugins.vim-test;
      config = ''
        lua << EOF
        vim.g["test#strategy"] = "vimux"
        EOF
      '';
    }
    # { plugin = blink-cmp; }
    { plugin = oil-gitstatus; }
    { plugin = pkgs.vimPlugins.vimux; }
    { plugin = pkgs.vimPlugins.vim-dadbod; }
    { plugin = pkgs.vimPlugins.vim-dadbod-ui; }
    { plugin = pkgs.vimPlugins.vim-dadbod-completion; }
  ];
}
