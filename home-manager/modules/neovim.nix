{ config, pkgs, ... }:

{
   programs.neovim = {
      enable = true;
      defaultEditor = true;
      plugins = with pkgs.vimPlugins; [
	  nvim-colorizer-lua
      ];
   };
}
