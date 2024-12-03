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
        __raw = ''
          ---@type AvanteProvider
          {
            ollama = {
              ["local"] = true,
              endpoint = "greymatter.local:11434/v1",
              model = "deepseek-coder-v2",
              parse_curl_args = function(opts, code_opts)
                return {
                  url = opts.endpoint .. "/chat/completions",
                  headers = {
                    ["Accept"] = "application/json",
                    ["Content-Type"] = "application/json",
                  },
                  body = {
                    model = opts.model,
                    messages = require("avante.providers").copilot.parse_message(code_opts), -- you can make your own message, but this is very advanced
                    max_tokens = 2048,
                    stream = true,
                  },
                }
              end,
              parse_response_data = function(data_stream, event_state, opts)
                require("avante.providers").openai.parse_response(data_stream, event_state, opts)
              end,
            }
          }
        '';
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
