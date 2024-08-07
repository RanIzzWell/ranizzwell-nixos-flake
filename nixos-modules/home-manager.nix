{
  inputs,
  pkgs,
  src,
  var,
  ...
}: {
  imports = [inputs.home-manager.nixosModules.home-manager];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {inherit inputs pkgs src var;};
    users.${var.username} = {
      programs.home-manager.enable = true;
      home = with var; {
        inherit username stateVersion;
        homeDirectory = var.homePath;
      };
      imports = with inputs.self.homeModules; [
        cli
        hyprland
        style
      ];
    };
  };
}
