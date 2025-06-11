{
  plugins = {
    comment.enable = true;
    dressing.enable = true;
    direnv.enable = true;
    emmet.enable = true;
    flash.enable = true;
    friendly-snippets.enable = true;
    gitsigns.enable = true;
    indent-blankline.enable = true;
    lint.enable = true;
    lualine.enable = true;
    luasnip.enable = true;
    nui.enable = true;
    nvim-autopairs.enable = true;
    qmk = {
      enable = true;
      settings = {
        auto_format_pattern = "*keymap.c";
        comment_preview = {
          keymap_overrides = { };
          position = "top";
          symbols = {
            bl = "└";
            bm = "┴";
            br = "┘";
            horz = "─";
            ml = "├";
            mm = "┼";
            mr = "┤";
            space = " ";
            tl = "┌";
            tm = "┬";
            tr = "┐";
            vert = "│";
          };
        };
        layout = [
          "x x x x x _ _ _ x x x x x"
          "x x x x x _ _ _ x x x x x"
          "x x x x x _ _ _ x x x x x"
          "_ _ _ x x x _ x x x _ _ _"
        ];
        name = "LAYOUT_default";
        timeout = 5000;
        variant = "qmk";
      };
    };
    sandwich.enable = true;
    trouble.enable = true;
    typescript-tools.enable = true;
    web-devicons.enable = true;
    # https://github.com/Exafunction/codeium.nvim/pull/264
    windsurf-nvim.enable = true;
  };
}
