{ config, pkgs, ... }:

# Honkai: Star Rail specific settings
let
  aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
in
# end of Honkai: Star Rail specific settings

{
  # more Honkai: Star Rail specific settings
  imports = [
    aagl-gtk-on-nix.module
  ];
  # end of more Honkai: Star Rail specific settings

  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    protonup
    protontricks
    osu-lazer-bin
  ];

  # more Honkai: Star Rail specific settings
  nix.settings = {
    substituters = [ "https://ezkea.cachix.org" ];
    trusted-public-keys = [ "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" ];
  };

  programs.honkers-railway-launcher.enable = true;
  # end of more Honkai: Star Rail specific settings
}
