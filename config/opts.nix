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
    require('oil-git-status').setup({ show_ignored = true })
     -- gray
    vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg='NONE', strikethrough=true, fg='#808080' })
    -- blue
    vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg='NONE', fg='#569CD6' })
    vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link='CmpIntemAbbrMatch' })
    -- light blue
    vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg='NONE', fg='#9CDCFE' })
    vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link='CmpItemKindVariable' })
    vim.api.nvim_set_hl(0, 'CmpItemKindText', { link='CmpItemKindVariable' })
    -- pink
    vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg='NONE', fg='#C586C0' })
    vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link='CmpItemKindFunction' })
    -- front
    vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg='NONE', fg='#D4D4D4' })
    vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link='CmpItemKindKeyword' })
    vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link='CmpItemKindKeyword' })
     -- transparent bg
    vim.api.nvim_set_hl(0, 'Normal', { guibg=NONE, ctermbg=NONE })
    -- Spelling is good
    vim.api.nvim_set_hl(0, 'SpellBad', { undercurl=true })
  '';
}
