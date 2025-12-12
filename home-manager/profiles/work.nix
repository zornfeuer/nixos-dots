{ pkgs, ...}:

{
  imports = [
    ../modules/librewolf.nix
  ];


  home.packages = with pkgs; [
    libreoffice-qt
  ];
  programs.fish = {
    shellAliases = {
      v = "nvim";
      ff = "fastfetch";
      e = "eza -l --icons";
      ea = "eza -la --icons";
      update = "home-manager switch -b backup --flake .#work";
      rebuild = "doas nixos-rebuild switch --flake .#work";
    };
  };
}
