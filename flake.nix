{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flakelight.url = "github:nix-community/flakelight";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {flakelight, ...} @ inputs:
    flakelight ./. {
      inherit inputs;
      nixDir = ./.;
      nixDirAliases = {
        nixosConfigurations = ["devices"];
        nixosModules = ["nixos-modules"];
        homeModules = ["home-modules"];
      };
      devShell = {
        packages = pkgs:
          with pkgs; [
            nh
            go-task
            alejandra
            yamlfmt
          ];
        shellHook = ''
          task --list-all
        '';
      };
      flakelight.builtinFormatters = false;
      formatters = {
        "*.nix" = "alejandra";
        "*.yml" = "yamlfmt";
      };
    };
}
