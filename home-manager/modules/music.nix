{ config, pkgs, ... }:
# Yes I do music WHAT DID YOU EXPECT!?
{
  home.packages = with pkgs; [
    audacious
    audacious-plugins
    reaper
    guitarix-vst
    surge-xt
    bespokesynth
    lsp-plugins
    vaporizer2
    dragonfly-reverb
  ];
}
