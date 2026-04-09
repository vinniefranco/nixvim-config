{ pkgs, ... }:
{
  globals.mapleader = " ";
  clipboard.register = "unnamedplus";
  opts = {
    cursorline = true;
    expandtab = true;
    ignorecase = true;
    laststatus = 3;
    list = true;
    listchars = "tab:>-,trail:●,nbsp:+";
    number = true;
    numberwidth = 2;
    pumborder = "single";
    relativenumber = true;
    shiftwidth = 2;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    smoothscroll = true;
    softtabstop = 2;
    spell = true;
    spelllang = "en_us";
    spellsuggest = "best,20";
    tabstop = 2;
    termguicolors = true;
    updatetime = 250;
    undofile = true;
    winborder = "single";
  };

  extraConfigLuaPost = builtins.readFile ./lua/extraConfigLuaPost.lua;
}
