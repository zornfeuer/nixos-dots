{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };

      animations = {
        enabled = true;

        bezier = [
          "ease, 0.25, 0.1, 0.25, 1.0"
          "slide_down, 0.16, 1, 0.3, 1"
          "wind, 0.05, 0.9, 0.1, 1.05"
          "smoothOut, 0.5, 0, 0.99, 0.99"
          "smoothIn, 0.25, 0.1, 0.3, 1.0"
        ];

        animation = [
          "workspaces,        1, 2.3,  ease"
          "specialWorkspace,  1, 4,    slide_down, slidevert"
          "windows,           1, 9,    ease,       slide"
          "windowsMove,       1, 5,    wind,       slide"
          "windowsOut,        1, 2,    smoothOut,  slide"
          "windowsIn,         1, 2,    smoothIn,   slide"
          "fade,              1, 1.5,  smoothOut"
        ];
      };

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          placeholder_text = "Password...";
          shadow_passes = 2;
        }
      ];
    };
  };
}
