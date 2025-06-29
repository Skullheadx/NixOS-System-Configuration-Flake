{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager, ... }:
  let
  	system = "x86_64-linux";
	hostname = "nixos";
	username = "skull";
in {
  	nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
		specialArgs = { inherit system; };

		modules = [
			./hosts/${hostname}/configuration.nix
			./hosts/${hostname}/hardware-configuration.nix

		home-manager.nixosModules.home-manager
		{
			home-manager.useGlobalPkgs = true;
			home-manager.useUserPackages = true;
			home-manager.users.${username} = import ./home/${username}.nix;
		}
		];
	};

  };
}
