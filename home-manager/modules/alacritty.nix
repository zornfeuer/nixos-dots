{ lib, ... }:

{
  programs.alacritty = {
    enable = true;

    theme = "gruvbox_material";
    settings = {
      font = {
        size = 13;
        builtin_box_drawing = true;
        normal = {
          style = lib.mkForce "Bold";
        };
      };
    };
  };
}
