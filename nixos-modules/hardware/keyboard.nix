{var, ...}: {
  services.xserver.xkb = {
    layout = "us";
    variant = var.keyboardLayout;
  };

  console.useXkbConfig = true;
}
