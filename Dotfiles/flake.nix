# flake.nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    ironbar = {
      url = "github:JakeStanger/ironbar";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    
    hm = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, hyprland, hm, ironbar, ...} @ inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      # ...
      modules = [
        hyprland.nixosModules.default
        {programs.hyprland.enable = true;}
        (import ./configuration.nix)
        hm.nixosModule
        {home-manager.users.zayd.imports = [./home.nix hyprland.homeManagerModules.default ironbar.homeManagerModules.default];}
        {

          home-manager = {
            useGlobalPkgs = true;
            extraSpecialArgs = {inherit inputs;};
          };
        }
      ];
    };
  };
}
