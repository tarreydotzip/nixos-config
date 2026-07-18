{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
     (discord.override {
        withVencord = true;
     })
     networkmanagerapplet
     motrix
     # yes this is certainly necessary for me
     kdePackages.kdenlive
   ];
}
