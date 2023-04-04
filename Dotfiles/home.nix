{...}: {
	imports = [
			# HYPRLAND
		 ./config/hyprland/hypr.nix
		 ./config/ironbar/bar.nix
		 # TERMINAL
	   ./config/terminal/starship.nix
		 ./config/terminal/kitty.nix
		 ./config/fish/fish.nix

	];
	home.username = "zayd";
	home.homeDirectory = "/home/zayd";
	home.stateVersion = "23.05";

	programs.home-manager.enable = true;

       }
