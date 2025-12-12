{
  services.i2pd = {
    enable = true;
    enableIPv6 = false;
    
    proto = {
      http = {
        enable = true;
        port = 7070;
        auth = false;
      };

      httpProxy = {
        enable = true;
        port = 4444;
      };

      socksProxy = {
        enable = true;
        port = 4447;
      };

      sam = {
        enable = true;
        port = 7656;
      };
    };
    
    addressbook.subscriptions = [
      "http://reg.i2p/hosts.txt"
      "http://identiguy.i2p/hosts.txt"
      "http://stats.i2p/cgi-bin/newhosts.txt"
    ];

    outTunnels = {
      SMTP = {
        enable = true;
        port = 7659;
        destination = "smtp.postman.i2p";
        destinationPort = 25;
        keys = "smtp-keys.dat";
      };
      POP3 = {
        enable = true;
        port = 7660;
        destination = "pop.postman.i2p";
        destinationPort = 110;
        keys = "pop3-keys.dat";
      };
    };
  };
}
