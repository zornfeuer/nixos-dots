{
  security.sudo.enable = false;

  security.doas = {
    enable = true;

    extraRules = [
      { groups = [ "wheel" ]; noPass = false; persist = true; }
    ];
  };
}
