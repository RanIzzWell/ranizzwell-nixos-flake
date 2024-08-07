{var, ...}: {
  programs.git = {
    enable = true;
    userName = var.name;
    userEmail = var.email;
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
