{
  description = "Magos Dominus's holy flake";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri-flake = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: 
      let
        system = "x86_64-linux";

        baseModules    = [ ./nixos/base.nix ];
        workProfile    = [ ./nixos/profiles/work.nix ];
        homeProfile    = [ ./nixos/profiles/home.nix ];
        mgrModules     = [ ./home-manager/base.nix ];
        workMgrProfile = [ ./home-manager/profiles/work.nix ];
        homeMgrProfile = [ ./home-manager/profiles/home.nix ];
      in
      {
        nixosConfigurations = {
          work = nixpkgs.lib.nixosSystem {
            specialArgs = {
              inherit inputs system;
            };
            modules = baseModules ++ workProfile ++ [
              ./hosts/work/hardware-configuration.nix
              inputs.nixvim.nixosModules.nixvim
            ];
          };
          home = nixpkgs.lib.nixosSystem {
            specialArgs = {
              inherit inputs system;
            };
            modules = baseModules ++ homeProfile ++ [
              ./hosts/home/hardware-configuration.nix
              inputs.nixvim.nixosModules.nixvim
            ];
          };
        };

        homeConfigurations = {
          work = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            modules = mgrModules ++ workMgrProfile ++ [
              inputs.niri-flake.homeModules.niri
            ];
          };
          home = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            modules = mgrModules ++ homeMgrProfile ++ [
              inputs.niri-flake.homeModules.niri
            ];
          };
        };
      };
}
