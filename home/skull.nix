{ config, pkgs, ...}:

{
	home.username = "skull";
	home.homeDirectory = "/home/skull";

	# User Account
	users.users.skull = {
		isNormalUser = true;
		description = "Andrew";
		extraGroups = [ "networkmanager" "wheel" ];
	};

	home.packages = with pkgs; [
		neovim
		wget
		neofetch
		brave
		firefox
		ghostty
		discord
		git
		github-desktop
		obsidian
		kdeApplications
	];

	# KDE Plasma DE
	programs.kdeApplications = {
		enable = true;
		package = kdeApplications.full;
	};

	programs.plasma = {
		enable = true;
		theme = "Breeze Dark";
		icons = "Breeze";
	};
	programs.sway = {
		enable = false;
	};

	programs.neovim = {
		enable = true;
		defaultEditor = true;
	};

	programs.steam = {
		enable = true;
	};

	programs.zsh.enable = true;
	programs.git.enable = true;


	home.stateVersion = "24.05";
	
}
