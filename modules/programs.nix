{ config, pkgs, inputs, ... }:

{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    intel-media-driver
    vulkan-headers
    vulkan-utility-libraries
    vulkan-loader
    vulkan-tools
    mesa
    libGL
    libGLU
    libGLX
    libglibutil
  ];
  
  programs.firefox.enable = true;
  programs.zsh.enable = true;
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    curl
    xwayland-satellite
    alsa-utils
    gamemode
    gvfs
    polkit
    lxsession
    libGL
    libGLU
    libglvnd
    zip
    unzip
  ];

  musnix.enable = true;
}
