{
  imports = [
    ./modules/pkgs.nix
    ./modules/alacritty.nix
    ./modules/bat.nix
    ./modules/fish.nix
    ./modules/mpd.nix
    ./modules/mpv.nix
    ./modules/ncmpcpp.nix
    ./modules/qt.nix
    ./modules/niri.nix
    ./modules/wofi.nix
    ./modules/waybar.nix
    ./modules/git.nix
    ./modules/jujutsu.nix
  ];

  home = {
    username = "zornfeuer";
    homeDirectory = "/home/zornfeuer";
    stateVersion = "25.11";
  };
}
