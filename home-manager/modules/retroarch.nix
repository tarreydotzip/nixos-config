{ config, pkgs, ... }:
{
   home.packages = with pkgs; [
      (retroarch.withCores (cores: with cores; [
      snes9x
      swanstation
      vba-m
      mesen
      ]))
      retroarch-assets
      librashader
   ];
}
