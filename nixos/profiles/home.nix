{ pkgs, ... }:

{
  imports = [
    ../modules/nvidia.nix
    ../modules/searxng.nix
    ../modules/steam.nix
  ];

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    steam
  ];
}
