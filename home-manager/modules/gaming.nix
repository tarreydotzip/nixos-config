{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
    dsda-doom
    freedoom
    ironwail
    yquake2
    heroic
    easyrpg-player
    fluidsynth
    luanti
    vbam
    steam
    steam-run
   ];
}
