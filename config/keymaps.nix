{
  keymaps = [
    {
      action = "<CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
      key = "<leader>tt";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('neotest').run.run()<CR>";
      key = "<leader>ts";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('neotest').output_panel.toggle()<CR>";
      key = "<leader>to";
      mode = [ "n" ];
    }
    {
      action.__raw = "function() require'flash'.jump() end";
      key = "s";
      mode = [
        "n"
        "x"
        "o"
      ];
    }
    {
      action = "<CMD>Oil<CR>";
      key = "-";
      mode = [ "n" ];
      options.desc = "Open File Navigator";
    }
    {
      action = "<CMD>NavigatorLeft<CR>";
      key = "<C-h>";
      mode = [ "n" ];
      options.desc = "Navigate Left";
    }
    {
      action = "<CMD>NavigatorRight<CR>";
      key = "<C-l>";
      mode = [ "n" ];
      options.desc = "Navigate Right";
    }
    {
      action = "<CMD>NavigatorUp<CR>";
      key = "<C-k>";
      mode = [ "n" ];
      options.desc = "Navigate Up";
    }
    {
      action = "<CMD>NavigatorDown<CR>";
      key = "<C-j>";
      mode = [ "n" ];
      options.desc = "Navigate Down";
    }
    {
      action = "<C-\\><C-n><C-w>h";
      mode = "t";
      key = "<C-h>";
    }
    {
      action = "<C-\\><C-n><C-w>j";
      mode = "t";
      key = "<C-j>";
    }
    {
      action = "<C-\\><C-n><C-w>k";
      mode = "t";
      key = "<C-k>";
    }
    {
      action = "<C-\\><C-n><C-w>l";
      mode = "t";
      key = "<C-l>";
    }
    {
      action = "<C-\\><C-n>";
      mode = "t";
      key = "<Esc>";
    }
    {
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      key = "<leader>m";
      options.desc = "LSP Format";
    }
  ];
}
