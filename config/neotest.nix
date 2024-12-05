{
  plugins.neotest = {
    enable = true;
    adapters = {
      elixir.enable = true;
      rust.enable = true;
      jest.enable = true;
    };
    settings = {
      output = {
        enabled = true;
        open_on_run = true;
      };
      output_panel = {
        enabled = true;
        open = "botright split | resize 15";
      };
      quickfix = {
        enabled = false;
      };
    };
  };
}
