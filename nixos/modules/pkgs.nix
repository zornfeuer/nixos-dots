{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # utils
    git
    wget
    curl
    home-manager
    ntfs3g
    doas-sudo-shim

    # dev tools
    python314
    rustc
    cargo
    glibc
    gcc
    pkg-config
    openssl
  ];
}
