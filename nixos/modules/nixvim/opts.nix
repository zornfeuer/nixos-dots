{
  programs.nixvim = {
    
    clipboard = {
      register = "unnamedplus";
      providers.xclip.enable = true;
    };

    opts = {
      relativenumber = true;
      number = true;

      termguicolors = false;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
    };

  };
}
