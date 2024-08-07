{pkgs, ...}: {
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      intel-media-sdk
    ];
  };

  environment.variables = {
    LIBVA_DRIVER_NAME = "iHD";
  };
}
