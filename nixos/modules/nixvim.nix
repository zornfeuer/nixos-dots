{
  imports = [
    ./nixvim/plugins/default.nix
    ./nixvim/opts.nix
    ./nixvim/keymaps.nix
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
  };
}
