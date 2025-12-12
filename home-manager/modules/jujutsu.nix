{
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        name = "zornfeuer";
        email = "zornfeuer@i2pmail.org";
      };
      ui = {
        paginate = "never";
      };
      git = {
        push = "origin";
      };
    };
  };
}
