{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd = {
        enable = true;
      };
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      pylsp = {
        enable = true;
      };
      nixd = {
        enable = true;
      };
    };
  };
}
