{ config, lib, ... }:

{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = let 
      normal =lib.mapAttrsToList (
        key: action: {
          mode = "n";
          inherit action key;
        }
      )
      {
        # Neotree
        "<leader>e" = ": Neotree left focus<CR>";
        "<leader>g" = ":Neotree float git_status<CR>";

        # Navigation
        "<c-k>" = ":wincmd k<CR>";
        "<c-j>" = ":wincmd j<CR>";
        "<c-h>" = ":wincmd h<CR>";
        "<c-l>" = ":wincmd l<CR>";
        "<leader>/" = ":CommentRoggle<CR>";

        # Splits
        "|" = ":vsplit<CR>";
        "\\" = ":split<CR>";

        # Other
        "<leader>w" = ":w<CR>";
      };
      input = lib.mapAttrsToList (
        key: action: {
          mode = "i";
          inherit action key;
        }
      )
      {
        "jj" = "<Esc>";
      };
    in
      config.lib.nixvim.keymaps.mkKeymaps
      {options.silent = true;}
      (normal ++ input);
  };
}
