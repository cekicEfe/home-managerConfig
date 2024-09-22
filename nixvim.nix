{configs,pkgs,...}:{
	imports = [ nixvim.nixosModules.nixvim ];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;

		plugins = {

		transparent = {
			enable = true;
		};
		treesitter = {
		    enable = true;
			
		    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
		      bash
		      cpp
		      json
		      lua
		      make
		      markdown
		      nix
		      regex
		      toml
		      vim
		      vimdoc
		      xml
		      nix
		      yaml
		    ];
		  };

		};
	};
}
