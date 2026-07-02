{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
      rose-pine-gtk-theme
      rose-pine-icon-theme
      rose-pine-cursor
      lxappearance
      picom
      papirus-icon-theme
   ];
}
