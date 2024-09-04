{
  keymaps = [
    {
      action = ":TestFile<CR>";
      key = "<leader>tt";
      mode = [ "n" ];
    }
    {
      action = ":TestNearest<CR>";
      key = "<leader>ts";
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
      action = "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>";
      key = "<leader>ff";
      mode = "n";
      options.desc = "Find Files";
    }
    {
      action = "<cmd>lua require('telescope.builtin').live_grep({hidden = true})<CR>";
      key = "<leader>fg";
      mode = "n";
      options.desc = "Grep Files";
    }
    {
      action = "<cmd>lua require('telescope.builtin').buffers()<CR>";
      key = "<leader>fb";
      mode = "n";
      options.desc = "Find Buffer";
    }
    {
      action = "<cmd>lua require('telescope.builtin').diagnostics()<CR>";
      key = "<leader>fd";
      mode = "n";
      options.desc = "Find Diagnostics";
    }
    {
      action = "<cmd>lua require('telescope.builtin').treesitter()<CR>";
      key = "<leader>ft";
      mode = "n";
      options.desc = "Find Treesitter";
    }
  ];
}
