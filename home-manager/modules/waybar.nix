{
  programs.waybar = {
    enable = true;

    style = ./waybar/style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 17;
        spacing = 0;
        marg-top = 5;
        margin-left = 100;
        margin-bottom = 0;
        margin-right = 100;
        output = [
          "eDP-1"
        ];

        modules-left = [
          "clock"
          "hyprland/workspaces"
        ];

        modules-center = [ ];

        modules-right = [
          "network"
          "cpu"
          "memory"
          "battery"
        ];

        "hyprland/workspaces" = {
          disable-scroll = true;
          disable-select-unfocused = true;
          all-outputs = true;
          wap-on-scroll = false;
        };
        "clock" = {
          format = " {:%a /%d /%m | %I:%M} ";
          tooltip-format = "{:%B of %Y}";
          on-click = "galendae";
        };

        "network" = {
          format-wifi = " ";
          format-disconnected = "⚠";
          on-click = "alacritty --class nmtui -e nmtui";
          tooltip-format = "{essid}";
        };
        "cpu" = {
          format = "{usage}% ";
          interval = 1;
        };
        "memory" = {
          format = "{}%  ";
          interval = 1;
        };
        "battery" = {
          interval = 1;
          states = {
            good = 90;
            warning = 15;
            critical = 5;
          };
          format = "{capacity} {icon}";
          format-full = "{capacity} {icon}";
          format-charging = "{capacity}  ";
          format-plugged = "{capacity}   ";
          format-icons = [ " " " " " " " " " "];
        };
      };
    };
  };
}
