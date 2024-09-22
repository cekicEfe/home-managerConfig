{ config, pkgs, ... }:{

  imports = [
    ./alacritty.nix    
  ];

  programs.home-manager.enable = true;

  home.username = "nixy"; 
  home.homeDirectory = "/home/nixy";
  home.stateVersion = "24.05";
  home.packages = [
    pkgs.btop
    pkgs.tor-browser
  ];

}
