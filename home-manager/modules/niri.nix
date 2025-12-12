{ pkgs, lib, ... }:

{
  home.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.niri = {
    enable = true;
    settings = {
      spawn-at-startup = [
        { argv = [ "waybar" ]; }
        { argv = [ "swaybg" "--image" "/home/zornfeuer/nix/home-manager/modules/hyprland/wallpapers/vsz.png" ]; }
      ];

      xwayland-satellite = {
        enable = true;
        path = lib.getExe pkgs.xwayland-satellite;
      };

      input = {
        mod-key = "Super";

        keyboard = {
          xkb = {
            layout = "us,ru";
            options = "grp:caps_toggle";
          };
        };

        focus-follows-mouse.enable = false;
      };

      binds = {
        "Mod+Return".action.spawn = "alacritty";
        "Mod+D".action.spawn = [ "wofi" "--show" "drun" ];
        "Mod+E".action.spawn = [ "swaylock" ];

        "Mod+O" = { repeat = false; action.toggle-overview = {}; };
        "Mod+Q".action.close-window = {};

        "Mod+H".action.focus-column-left = {};
        "Mod+J".action.focus-window-down = {};
        "Mod+K".action.focus-window-up = {};
        "Mod+L".action.focus-column-right = {};
        "Mod+Left".action.focus-column-left = {};
        "Mod+Down".action.focus-window-down = {};
        "Mod+Up".action.focus-window-up = {};
        "Mod+Right".action.focus-column-right = {};

        "Mod+Shift+H".action.move-column-left = {};
        "Mod+Shift+J".action.move-window-down = {};
        "Mod+Shift+K".action.move-window-up = {};
        "Mod+Shift+L".action.move-column-right = {};
        "Mod+Shift+Left".action.move-column-left = {};
        "Mod+Shift+Down".action.move-window-down = {};
        "Mod+Shift+Up".action.move-window-up = {};
        "Mod+Shift+Right".action.move-column-right = {};

        "Mod+Ctrl+H".action.focus-monitor-left = {};
        "Mod+Ctrl+J".action.focus-monitor-down = {};
        "Mod+Ctrl+K".action.focus-monitor-up = {};
        "Mod+Ctrl+L".action.focus-monitor-right = {};
        "Mod+Ctrl+Left".action.focus-monitor-left = {};
        "Mod+Ctrl+Down".action.focus-monitor-down = {};
        "Mod+Ctrl+Up".action.focus-monitor-up = {};
        "Mod+Ctrl+Right".action.focus-monitor-right = {};

        "Mod+Shift+Ctrl+H".action.move-column-to-monitor-left = {};
        "Mod+Shift+Ctrl+J".action.move-column-to-monitor-down = {};
        "Mod+Shift+Ctrl+K".action.move-column-to-monitor-up = {};
        "Mod+Shift+Ctrl+L".action.move-column-to-monitor-right = {};
        "Mod+Shift+Ctrl+Left".action.move-column-to-monitor-left = {};
        "Mod+Shift+Ctrl+Down".action.move-column-to-monitor-down = {};
        "Mod+Shift+Ctrl+Up".action.move-column-to-monitor-up = {};
        "Mod+Shift+Ctrl+Right".action.move-column-to-monitor-right = {};

        "Mod+Page_Down".action.focus-workspace-down = {};
        "Mod+Page_Up".action.focus-workspace-up = {};
        "Mod+U".action.focus-workspace-down = {};
        "Mod+I".action.focus-workspace-up = {};
        "Mod+Shift+Page_Down".action.move-column-to-workspace-down = {};
        "Mod+Shift+Page_Up".action.move-column-to-workspace-up = {};
        "Mod+Shift+U".action.move-column-to-workspace-down = {};
        "Mod+Shift+I".action.move-column-to-workspace-up = {};

        "Mod+Home".action.focus-column-first = {};
        "Mod+End".action.focus-column-last = {};
        "Mod+Shift+Home".action.move-column-to-first = {};
        "Mod+Shift+End".action.move-column-to-last = {};

        "Mod+Minus".action.set-column-width = "-10%";
        "Mod+Equal".action.set-column-width = "+10%";

        "Mod+Shift+Minus".action.set-window-height = "-10%";
        "Mod+Shift+Equal".action.set-window-height = "+10%";

        "Mod+Shift+Slash".action.show-hotkey-overlay = {};
        "Mod+Shift+E".action.quit.skip-confirmation = true;
        "Mod+1".action.focus-workspace = 1;
        "Mod+2".action.focus-workspace = 2;
        "Mod+3".action.focus-workspace = 3;
        "Print".action.screenshot.show-pointer=false;

        "XF86AudioRaiseVolume" = {
          allow-when-locked = true;
          action.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0";
        };
        "XF86AudioLowerVolume" = {
          allow-when-locked = true;
          action.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-";
        };
        "XF86AudioMute" = {
          allow-when-locked = true;
          action.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        };
        "XF86AudioMicMute" = {
          allow-when-locked = true;
          action.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
        };
      };

      layout = {
        gaps = 4;
        center-focused-column = "never";
        always-center-single-column = true;
        empty-workspace-above-first = true;
        background-color = "#282828";

        tab-indicator = {
          enable = true;
          hide-when-single-tab = true;
          position = "right";
          active.color = "#89b482";
          inactive.color = "#665c54";
          urgent.color = "#e78a4e";
        };
      };
    };
  };
}
