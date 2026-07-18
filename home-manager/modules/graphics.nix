{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
    gimp
    qimgv
    mpv
   ];
}
