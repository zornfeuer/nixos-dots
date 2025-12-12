{
  services.searx = {
    enable = true;
    redisCreateLocally = true;
    settings.server = {
      secret_key = "test";
      bind_address = "127.0.0.1";
      port = 8080;
    };
  };
}
