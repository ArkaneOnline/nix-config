{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vscode
    github-desktop
    nodejs
    gh
  ];
}
