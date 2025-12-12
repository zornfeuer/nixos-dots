{
  services.mpd = {
    enable = true;
    musicDirectory = "~/mus";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "PipewWire Sound Server"
      }
      audio_output {
        type "fifo"
        name "Visualizer feed"
        path "/tmp/mpd.fifo"
        format "44100:16:2"
      }
    '';
  };
}
