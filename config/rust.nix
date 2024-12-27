{ pkgs, ... }:
{
  plugins = {
    crates-nvim = {
      enable = true;
      extraOptions = {
        completion.cmp.enabled = false;
      };
    };

    rustaceanvim = {
      enable = true;
      settings = {
        dap.autoloadConfigurations = true;
        dap.adapter =
          let
            code-lldb = pkgs.vscode-extensions.vadimcn.vscode-lldb;
          in
          {
            executable.command = "${code-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
            executable.args = [
              "--liblldb"
              "${code-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/lldb/lib/liblldb.dylib"
              "--port"
              "31337"
            ];
            type = "server";
            port = "31337";
            host = "127.0.0.1";
          };
        server = {
          default_settings = {
            rust-analyzer = {
              cargo = {
                buildScripts.enable = true;
                features = "all";
              };

              diagnostics = {
                enable = true;
                styleLints.enable = true;
              };

              checkOnSave = true;
              check = {
                command = "clippy";
                features = "all";
              };

              files = {
                excludeDirs = [
                  ".cargo"
                  ".direnv"
                  ".git"
                  "node_modules"
                  "target"
                ];
              };

              inlayHints = {
                bindingModeHints.enable = true;
                closureStyle = "rust_analyzer";
                closureReturnTypeHints.enable = "always";
                discriminantHints.enable = "always";
                expressionAdjustmentHints.enable = "always";
                implicitDrops.enable = true;
                lifetimeElisionHints.enable = "always";
                rangeExclusiveHints.enable = true;
              };

              procMacro = {
                enable = true;
              };

              rustc.source = "discover";
            };
          };
        };
      };
    };
  };
}
