{
  services.xserver.enable = true;

  programs.hyprland.enable = true;

  environment.variables = {
    NIXOS_OZONE_WL = "1";
    XCURSOR_SIZE = "24";
    HYPRCURSOR_SIZE = "24";
  };
}
