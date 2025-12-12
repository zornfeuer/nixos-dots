{
  hardware.graphics = {
    enable = true;
  };

  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };

  programs.niri = {
    enable = true;
  };
}
