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
      provider = "ollama";
      vendors = {
        ollama = {
          __inherited_from = "openai";
          api_key_name = "";
          endpoint = "http://greymatter.local:11434/v1";
          model = "qwen2.5-coder";
          max_tokens = 4096;
          temperature = 0;
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
