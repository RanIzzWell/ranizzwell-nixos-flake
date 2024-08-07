{
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/9b994f53-c6aa-43d3-808e-c524937501fd";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/FEF3-A622";
    fsType = "vfat";
    options = ["fmask=0022" "dmask=0022"];
  };

  swapDevices = [];
}
