{
  programs.mpv = {
    enable = true;
    config = {
      profile = "gpu-hq";
      force-window = true;
      ytdl-format = "baetvideo+bestaduio";
      cache-default = 4000000;
    };
  };
}
