{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    floorp

    # Hyprland Environment
    networkmanagerapplet
    wl-clipboard
  ];

  programs.fish.enable = true;

  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = ["JetBrainsMono"];})
    font-awesome
  ];
}
