{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vesktop
    hyfetch
    neofetch
    obs-studio
  ];
}
