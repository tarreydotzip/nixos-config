{
  description = "proof that i hate myself :)))";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    nixvim = {
      url = "path:./nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    awesome-flake.url = "github:Souheab/awesomewm-git-nix-flake";
    musnix = { url = "github:musnix/musnix"; };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, awesome-flake, ... }: {
    nixosConfigurations.N40 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [ 
        ./configuration.nix
        home-manager.nixosModules.home-manager
	inputs.musnix.nixosModules.musnix
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.users.tarrey = import ./home-manager/home.nix;
        }
	({ pkgs, ... }: {
	   nixpkgs.overlays = [ awesome-flake.overlays.default ];

	   services.xserver = {
	     enable = true;
	     windowManager.awesome = {
	       enable = true;
	       package = pkgs.awesome-git;
	     };
	   };
	 })
      ];
    };
  };  
}

