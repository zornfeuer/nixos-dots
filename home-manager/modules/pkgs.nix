{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    thunderbird
    nicotine-plus
    obs-studio
    lxqt.pavucontrol-qt
    qbittorrent
    keepassxc

    # CLI utils
    htop
    fastfetch
    zip
    unzip
    ffmpeg
    w3m
    wl-clipboard
    grimblast
    yt-dlp
    feh
    swaybg
    swaylock
    p7zip
    unixtools.netstat
    ripgrep
    zoxide
    fd
    eza

    # Other
    papirus-icon-theme
    pcmanfm-qt
    xdg-desktop-portal-gtk
    noto-fonts-cjk-sans
    xwayland-satellite
  ];  
}
