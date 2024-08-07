{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
    settings = {
      # Monitor
      # Ref: https://github.com/hyprwm/xdg-desktop-portal-hyprland/issues/99#issuecomment-1731390092
      monitor = "eDP-1,1920x1080@60,0x0,1.25,bitdepth,10";

      # Autostart
      exec-once = [
        "nm-applet --indicator"
        "blueman-applet"
        "waybar"
      ];

      # Look And Feel
      general = {
        gaps_in = 2;
        gaps_out = 4;
        border_size = 2;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };
      decoration = {
        rounding = 10;
        active_opacity = "1.0";
        inactive_opacity = "1.0";
        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(1a1a1aee)";
        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          vibrancy = "0.1696";
        };
      };
      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };
      master = {
        new_status = "master";
      };
      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = false;
      };

      # Input
      input = {
        kb_layout = "us";
        kb_variant = "colemak_dh";
        follow_mouse = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
        };
      };
      gestures = {
        workspace_swipe = false;
      };

      # Keybindings
      bind = [
        "SUPER, RETURN, exec, foot"
        "SUPER, W, exec, floorp"
        "SUPER, Q, killactive,"
        "SUPER, V, togglefloating,"
        "SUPER, P, pseudo,"
        "SUPER, Z, togglesplit,"
        "SUPER, F, fullscreen,"

        "SUPER, H, movefocus, l"
        "SUPER, L, movefocus, r"
        "SUPER, K, movefocus, u"
        "SUPER, J, movefocus, d"

        "SUPER SHIFT, H, movewindow, l"
        "SUPER SHIFT, L, movewindow, r"
        "SUPER SHIFT, K, movewindow, u"
        "SUPER SHIFT, J, movewindow, d"

        "SUPER, 1, workspace, 1"
        "SUPER, 2, workspace, 2"
        "SUPER, 3, workspace, 3"
        "SUPER, 4, workspace, 4"
        "SUPER, 5, workspace, 5"
        "SUPER, 6, workspace, 6"
        "SUPER, 7, workspace, 7"
        "SUPER, 8, workspace, 8"
        "SUPER, 9, workspace, 9"
        "SUPER, 0, workspace, 10"

        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2"
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
        "SUPER SHIFT, 6, movetoworkspace, 6"
        "SUPER SHIFT, 7, movetoworkspace, 7"
        "SUPER SHIFT, 8, movetoworkspace, 8"
        "SUPER SHIFT, 9, movetoworkspace, 9"
        "SUPER SHIFT, 0, movetoworkspace, 10"

        "SUPER, S, togglespecialworkspace, magic"
        "SUPER SHIFT, S, movetoworkspace, special:magic"
      ];

      # Windows And Workspaces
      windowrule = [
        "float, nm-connection-editor"
        "float, blueman-manager"
      ];
      windowrulev2 = [
        # Floorp Sharing Indicator
        # Ref: https://github.com/MathieuDR/nix/blob/5f90fb0e0cbba97aaf70699d8dce9ffd540f4710/home-manager/hyprland.nix#L182
        "float, class:(floorp), title:(Floorp — Sharing Indicator)"
        "suppressevent fullscreen maximize activate activatefocus, class:(floorp), title:(Floorp — Sharing Indicator)"
        "size 55 32, class:(floorp), title:(Floorp — Sharing Indicator)"
        "move 5 1400, class:(floorp), title:(Floorp — Sharing Indicator)"
      ];
    };
  };
}
