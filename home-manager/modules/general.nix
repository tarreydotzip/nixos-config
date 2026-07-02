{ config, pkgs, inputs, ... }:
# Most of the normal pieces of software you would see me using daily
{
   home.packages = with pkgs; [
    btop
    alacritty
    rofi
    fastfetch
    nemo
    unzip
    unrar
    file-roller
    gnome-screenshot
    libnotify
    nemo-fileroller
    obs-studio

    # What is even a wm or a compositor without something that serves as a bar!?
    quickshell
    awww

    # this one's adopted btw
    inputs.nixvim.packages.${pkgs.system}.default
   ];
}
