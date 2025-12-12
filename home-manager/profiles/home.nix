{
  imports = [
    ../modules/qutebrowser.nix
  ];

  programs.fish = {
    shellAliases = {
      v = "nvim";
      ff = "fastfetch";
      e = "eza -l --icons";
      ea = "eza -la --icons";
      update = "home-manager switch -b backup --flake .#home";
      rebuild = "doas nixos-rebuild switch --flake .#home";
    };
  };
}
