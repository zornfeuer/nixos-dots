{ pkgs, ... }:

{
  qt = {
    enable = true;
    platformTheme.name = "adwaita";
    style = {
      name = "adwaita-dark";
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.vanilla-dmz;
    name = "DMZ-Black";
    size = 24;
  };

  gtk = {
    enable = true;

    theme = {
      name = "adwaita-dark";
    };

    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };

    font = {
      name = "JetBrains Mono";
      package = pkgs.nerd-fonts.jetbrains-mono;
      size = 11;
    };
  };
}
