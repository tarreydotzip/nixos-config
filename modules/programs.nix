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
    steam-run
  ];
  
  programs.firefox.enable = true;
  programs.zsh.enable = true;
  programs.hyprland.enable = true;

  programs.steam = {
     enable = true;
     remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
     dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
     localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

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
