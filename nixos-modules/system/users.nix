{
  pkgs,
  var,
  ...
}: {
  users.users.${var.username} = {
    isNormalUser = true;
    description = var.name;
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
  };
}
