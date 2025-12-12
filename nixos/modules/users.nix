{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.zornfeuer = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
  };
}
