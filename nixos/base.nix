{
  imports =[
    ./modules/boot.nix
    ./modules/doas.nix
    ./modules/env.nix
    ./modules/gc.nix
    ./modules/i2pd.nix
    ./modules/network.nix
    ./modules/sound.nix
    ./modules/users.nix
    ./modules/nixvim.nix
    ./modules/pkgs.nix
    ./modules/virtualisation.nix
    ./modules/graphics.nix
  ];

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes"];

  system.stateVersion = "25.11"; # Don't touch!!!
}
