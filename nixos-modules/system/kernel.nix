{pkgs, ...}: {
  boot = {
    initrd.availableKernelModules = ["xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod"];
    kernelModules = ["kvm-intel"];
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = ["quiet" "splash" "nosgx"];
    kernel.sysctl = {"vm.swappiness" = 10;};
  };
}
