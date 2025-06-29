{ config, pkgs, ...}:

{
	home.username = "skull";
	home.homeDirectory = "/home/skull";

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
	];

	programs.zsh.enable = true;
	programs.git.enable = true;


	home.stateVersion = "24.05";
	
}
