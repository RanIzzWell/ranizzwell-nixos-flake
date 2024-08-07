{
  config,
  lib,
  ...
}: {
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
  };

  boot = {
    extraModulePackages = [config.boot.kernelPackages.rtl8821ce];
    blacklistedKernelModules = ["rtw88_8821ce"];
  };
}
