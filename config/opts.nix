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

  extraConfigLuaPost = "
    -- require('oil-git-status').setup({ show_ignored = true })
     -- gray
     -- transparent bg
    vim.api.nvim_set_hl(0, 'Normal', { guibg=NONE, ctermbg=NONE })
    -- Spelling is good
    vim.api.nvim_set_hl(0, 'SpellBad', { undercurl=true })

    -- Experimental UI2: floating cmdline and messages
    vim.o.cmdheight = 0
    vim.api.nvim_create_autocmd('UIEnter', {
      once = true,
      callback = function()
        require('vim._core.ui2').enable({
          enable = true,
          msg = {
            targets = {
              [''] = 'msg',
              empty = 'cmd',
              bufwrite = 'msg',
              confirm = 'cmd',
              emsg = 'pager',
              echo = 'msg',
              echomsg = 'msg',
              echoerr = 'pager',
              completion = 'cmd',
              list_cmd = 'pager',
              lua_error = 'pager',
              lua_print = 'msg',
              progress = 'pager',
              rpc_error = 'pager',
              quickfix = 'msg',
              search_cmd = 'cmd',
              search_count = 'cmd',
              shell_cmd = 'pager',
              shell_err = 'pager',
              shell_out = 'pager',
              shell_ret = 'msg',
              undo = 'msg',
              verbose = 'pager',
              wildlist = 'cmd',
              wmsg = 'msg',
              typed_cmd = 'cmd',
            },
            cmd = {
              height = 0.5,
            },
            dialog = {
              height = 0.5,
            },
            msg = {
              height = 0.3,
              timeout = 5000,
            },
            pager = {
              height = 0.5,
            },
          },
        })
      end,
    })
  ";
}
