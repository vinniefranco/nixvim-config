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
    relativenumber = true;
    shiftwidth = 2;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    softtabstop = 2;
    spell = true;
    spelllang = "en_us";
    tabstop = 2;
    termguicolors = true;
    updatetime = 250;
    undofile = true;
  };

  extraConfigLuaPost = ''
    -- require('oil-git-status').setup({ show_ignored = true })
     -- gray
     -- transparent bg
    vim.api.nvim_set_hl(0, 'Normal', { guibg=NONE, ctermbg=NONE })
    -- Spelling is good
    vim.api.nvim_set_hl(0, 'SpellBad', { undercurl=true })
  '';
}
