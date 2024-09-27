{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
	opacity = 0.9;
	padding = {
	  x = 5;
	  y = 5;
	};
      };
      colors = {
	primary = {
	  background = "0x1d2021";
	  foreground = "0xebdbb2";
	};
	cursor = {
	  text = "0x1d2021";
	  cursor = "0xebdbb2";
	};
      };
    };
  };
}
