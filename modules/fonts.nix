{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
     nerd-fonts.terminess-ttf
     nerd-fonts.iosevka
     nerd-fonts.jetbrains-mono
     terminus_font_ttf
     terminus_font
  ];
}
