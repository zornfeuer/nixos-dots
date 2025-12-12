{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    openconnect
    oath-toolkit
  ];
}
