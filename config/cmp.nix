{
  plugins = {
    cmp = {
      enable = false;
      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        completion.completeopt = "noselect";
        preselect = "None";
        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };

        sources = [
          { name = "codeium"; }
          { name = "path"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_document_symbol"; }
          { name = "dap"; }
          { name = "treesitter"; }
          { name = "luasnip"; }
          { name = "buffer"; }
        ];
        formatting.fields = ["abbr" "kind" "menu"];
        formatting.format =
          # lua
          ''
            function(_, vim_item)
              local icons = {
                Namespace = "󰌗",
                Text = "󰉿",
                Method = "󰆧",
                Function = "󰆧",
                Constructor = "",
                Field = "󰜢",
                Variable = "󰀫",
                Class = "󰠱",
                Interface = "",
                Module = "",
                Property = "󰜢",
                Unit = "󰑭",
                Value = "󰎠",
                Enum = "",
                Keyword = "󰌋",
                Snippet = "",
                Color = "󰏘",
                File = "󰈚",
                Reference = "󰈇",
                Folder = "󰉋",
                EnumMember = "",
                Constant = "󰏿",
                Struct = "󰙅",
                Event = "",
                Operator = "󰆕",
                TypeParameter = "󰊄",
                Table = "",
                Object = "󰅩",
                Tag = "",
                Array = "󰅪",
                Boolean = "",
                Number = "",
                Null = "󰟢",
                String = "󰉿",
                Calendar = "",
                Watch = "󰥔",
                Package = "",
                Copilot = "",
                Codeium = "",
                TabNine = "",
              }
              vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
              return vim_item
            end
          '';
      };
    };
    cmp-buffer.enable = true;
    cmp-clippy.enable = true;
    cmp-cmdline-history.enable = true;
    cmp-cmdline.enable = true;
    cmp-dap.enable = true;
    cmp-emoji.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-spell.enable = true;
    cmp-treesitter.enable = true;
    cmp_luasnip.enable = true;
  };
}
