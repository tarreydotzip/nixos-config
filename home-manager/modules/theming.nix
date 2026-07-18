{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
      rose-pine-gtk-theme
      rose-pine-icon-theme
      rose-pine-cursor
      rose-pine-kvantum
      lxappearance
      picom
      papirus-icon-theme
      themix-gui
      imagemagick
      nwg-look
      waybar
      qt6Packages.qt6ct
      kdePackages.qtstyleplugin-kvantum
      qt6Packages.qtstyleplugin-kvantum
      libsForQt5.qtstyleplugin-kvantum
      libsForQt5.qt5ct
   ];
}
