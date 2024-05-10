# nix-config

## installation

- install nixos with graphical installer

- mount drives

- generate new config `sudo nixos-generate-config`

- switch to unstable `sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos`

- upgrade the system `sudo nixos-rebuild switch --upgrade`

- clone this repo and place in `/etc/nixos/`

- install the new config `sudo nixos-rebuild switch`