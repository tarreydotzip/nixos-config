{ config, pkgs, ... }:
{
   home.packages = with pkgs; [
      (retroarch.withCores (cores: with cores; [
      snes9x
      swanstation
      ]))
      retroarch-assets
      librashader
   ];
}
