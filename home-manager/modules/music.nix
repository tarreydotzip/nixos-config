{ config, pkgs, ... }:
# Yes I do music WHAT DID YOU EXPECT!?
{
  home.packages = with pkgs; [
    audacious
    audacious-plugins
    audacity
    lmms-full
    reaper
    guitarix
    guitarix-vst
    gxplugins-lv2
    surge-xt
    bespokesynth
    yabridge
    yabridgectl
    lsp-plugins
    vaporizer2
    dragonfly-reverb
    sfizz-ui
  ];
}
