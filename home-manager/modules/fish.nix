{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      function fish_prompt
        set -l last_status $status
        set -l stat
        if test $last_status -ne 0
          set stat (set_color red)"[$last_status]"(set_color yellow)
        end

        string join "" -- (set_color green) (prompt_pwd) ' ' (set_color yellow) $stat '> '
      end
    '';
    shellInit = ''
      set -U fish_greeting
      zoxide init fish | source
    '';
  };
}
