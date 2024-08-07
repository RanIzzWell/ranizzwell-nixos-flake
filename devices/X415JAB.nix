{
  inputs,
  src,
  ...
}: let
  var = import "${src}/variables.nix";
in {
  system = "x86_64-linux";
  specialArgs = {inherit inputs src var;};
  modules = with inputs.self.nixosModules; [
    {
      i18n.defaultLocale = "en_US.UTF-8";
      time.timeZone = "Asia/Jakarta";
      services.printing.enable = true;
      system.stateVersion = var.stateVersion;
    }
    hardware
    home-manager
    hyprland
    system
  ];
}
