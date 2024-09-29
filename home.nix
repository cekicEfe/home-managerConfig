{ config, pkgs, ... }:{

  imports = [
    ./alacritty.nix
    ./nixvim.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "nixy"; 
    homeDirectory = "/home/nixy";
    stateVersion = "24.05";
    packages = [
      pkgs.fastfetch
      pkgs.btop
      pkgs.tor-browser
      pkgs.ranger
      pkgs.mesa-demos
    ];
  };

  programs.git = {
    enable = true;
    userName = "cekicEfe";
    userEmail = "efecekic0@gmail.com";
  };

  programs.bash = 
  {
    enable = true;
  };

}
