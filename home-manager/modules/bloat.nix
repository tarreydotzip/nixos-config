{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    libreoffice
    keepassxc
    fortune
    figlet
    thunar-volman
    thunar-archive-plugin
  ];
}
