{ config, pkgs, inputs, ... }:
# Most of the normal pieces of software you would see me using daily
{
   home.packages = with pkgs; [
    btop
    alacritty
    rofi
    fastfetch
    thunar
    unzip
    unrar
    engrampa
    gnome-screenshot
    libnotify
    obs-studio

    # What is even a wm or a compositor without something that serves as a bar!?
    quickshell
    awww
    grim
    slurp

    # this one's adopted btw
    inputs.nixvim.packages.${pkgs.system}.default
   ];
}
