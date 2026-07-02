{ config, pkgs, ... }:

{
   home.packages = [
    pkgs.dsda-doom
    pkgs.freedoom
    pkgs.ironwail
    pkgs.heroic
    pkgs.easyrpg-player
    pkgs.wineWow64Packages.stable
    pkgs.fluidsynth
    pkgs.luanti
    pkgs.vbam
    pkgs.steam
   ];
}
