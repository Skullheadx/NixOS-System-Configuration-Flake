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
		steam
		plasma6Packages.plasma-desktop
		kdeApplications.kate
		kdeApplications.dolphin
		kdeApplications.okular
	];

	programs.neovim = {
		enable = true;
		defaultEditor = true;
	};

	programs.zsh.enable = true;
	programs.git.enable = true;


	home.stateVersion = "24.05";
	
}
