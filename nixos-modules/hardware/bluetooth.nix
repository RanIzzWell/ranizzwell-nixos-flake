{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    disabledPlugins = [
      "bap"
      "bass"
      "mcp"
      "vcp"
      "micp"
      "ccp"
      "csip"
    ];
  };

  services.blueman.enable = true;
}
