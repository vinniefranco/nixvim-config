{
  plugins.avante = {
    enable = true;
    settings = {
      diff = {
        autojump = true;
        debug = false;
        list_opener = "copen";
      };
      highlights = {
        diff = {
          current = "DiffText";
          incoming = "DiffAdd";
        };
      };
      hints = {
        enabled = true;
      };
      behaviour = {
        auto_suggestions = false;
        auto_set_highlight_group = true;
        auto_set_keymaps = true;
        auto_apply_diff_after_generation = false;
        support_paste_from_clipboard = false;
        minimize_diff = true;
      };
      mappings = {
        diff = {
          both = "cb";
          next = "]x";
          none = "c0";
          ours = "co";
          prev = "[x";
          theirs = "ct";
        };
        sidebar = {
          apply_all = "A";
          apply_cursor = "a";
        };
      };
      provider = "openrouter";
      providers = {
        openrouter = {
          __inherited_from = "openai";
          endpoint = "https://openrouter.ai/api/v1";
          api_key_name = "OPENROUTER_API_KEY";
          model = "moonshotai/kimi-k2:free";
        };
      };
      windows = {
        sidebar_header = {
          align = "center";
          rounded = true;
        };
        width = 30;
        wrap = true;
      };
    };
  };
}
