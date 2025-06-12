{ pkgs, ... }:
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
  ];
}
