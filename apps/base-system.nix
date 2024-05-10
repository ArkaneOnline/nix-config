{ config, pkgs, ... }:

{
  # set the kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    pciutils
    git
    htop
    btop
  ];
}
