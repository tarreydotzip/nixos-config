{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    libreoffice
    keepassxc
    fortune
    figlet
  ];
}
