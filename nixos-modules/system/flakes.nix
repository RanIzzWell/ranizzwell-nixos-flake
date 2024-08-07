{var, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 7d --keep 8";
    flake = var.flakePath;
  };
}
