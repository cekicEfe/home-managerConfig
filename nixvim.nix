{configs,pkgs,...}:
let
  nixvim = import (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      # When using a different channel you can use `ref = "nixos-<version>"` to set it here
  });
in{

  imports = [
    nixvim.homeManagerModules.nixvim
    ./vimPlugins/lsp.nix
    ./vimPlugins/cmp.nix
    ./vimPlugins/neotree.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    plugins.lualine.enable = true; 
	
    colorschemes.tokyonight = {
      enable = true;
      transparent = true;
    };

    opts = {
      number = true;         # Show line numbers
      relativenumber = true; # Show relative line numbers
      shiftwidth = 2;        # Tab width should be 2
    };

    plugins = {
      transparent = {	
	enable = true;
      };
    };


  };
}
