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
      mode = [
        "n"
        "t"
      ];
      options.desc = "Navigate Left";
    }
    {
      action = "<CMD>NavigatorRight<CR>";
      key = "<C-l>";
      mode = [
        "n"
        "t"
      ];
      options.desc = "Navigate Right";
    }
    {
      action = "<CMD>NavigatorUp<CR>";
      key = "<C-k>";
      mode = [
        "n"
        "t"
      ];
      options.desc = "Navigate Up";
    }
    {
      action = "<CMD>NavigatorDown<CR>";
      key = "<C-j>";
      mode = [
        "n"
        "t"
      ];
      options.desc = "Navigate Down";
    }
    {
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      key = "<leader>m";
      options.desc = "LSP Format";
    }
  ];
}
