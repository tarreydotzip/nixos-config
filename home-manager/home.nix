{ lib, config, pkgs, targets, ... }:

{
   imports = [
     ./modules/gaming.nix
     ./modules/general.nix
     ./modules/internet.nix
     ./modules/graphics.nix
     ./modules/theming.nix
     ./modules/bloat.nix
     ./modules/music.nix
     ./modules/retroarch.nix
   ];

   home.username = "tarrey";
   home.homeDirectory = "/home/tarrey";
   home.stateVersion = "26.11";

   programs.home-manager.enable = true;

   programs.zsh = {
     enable = true;
     enableCompletion = true;
     syntaxHighlighting.enable = true;
     enableAutosuggestions = true;

     shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
      nixos-upgrade = "sudo nixos-rebuild switch --upgrade";
     };

     initContent = ''
       export PS1="%F{red}%n%F %F{blue}%~%F
       %F{white}> "
     '';
   };

   targets.genericLinux.nixGL.vulkan.enable = true;

   xresources.properties = {
    "Xcursor.size" = 24;
   };

   qt = {
     enable = true;
     platformTheme.name = "kvantum";
     style.name = "kvantum";
   };

   xdg.desktopEntries = {
     ironwail = {
       categories = [ "Game" ];
       exec = "env SDL_VIDEODRIVER=x11 ironwail";
       name = "Ironwail";
       icon = "quake";
     };
   };

}
