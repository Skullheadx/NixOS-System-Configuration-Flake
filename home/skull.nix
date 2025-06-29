{ config, pkgs, ...}:

{
	home.username = "skull";
	home.homeDirectory = "/home/skull";

	programs.zsh.enable = true;
	programs.git.enable = true;


	home.stateVersoin = "24.05";
	
}
