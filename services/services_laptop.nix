{ config, pkgs, lib, ... }:

{
  services.tftpd.enable = true;
  services.acpid.enable = true;
  services.gnome3.gnome-keyring.enable = true;
  services.printing.enable = false;

  services.xserver = {
    enable = true;
    layout = "gb";
    videoDrivers = [ "intel" ];
    vaapiDrivers = [ pkgs.vaapiIntel ];

    synaptics = {
      enable = true;
      twoFingerScroll = true;
      palmDetect = true;
    };
  };

  services.xserver.displayManager.sessionCommands = ''
    ${pkgs.xorg.xsetroot}/bin/xsetroot -solid black
    ${pkgs.xorg.xrdb}/bin/xrdb "${pkgs.writeText "xrdb.conf" ''
       Xft.dpi:              96
       Xft.antialias:        true
       Xft.hinting:          full
       Xft.hintstyle:        hintslight
       Xft.rgba:             rgb
       Xft.lcdfilter:        lcddefault
       Xft.autohint:         1
       XTerm.termName:       xterm-256color
       XTerm*bellIsUrgent:   true
       XTerm*utf8:           1
       XTerm*locale:         true
       XTerm*utf8Title:      true
       XTerm*utf8Fonts:      1
       XTerm*utf8Latin1:     true
       XTerm*dynamicColors:  true
       XTerm*eightBitInput:  true
       Xcursor.theme:        Vanilla-DMZ-AA
       Xcursor.size:         22
       *.charClass:33:48,35:48,37:48,43:48,45-47:48,61:48,63:48,64:48,95:48,126:48,35:48,58:48
       XTerm*faceName:       xft:DejaVu Sans Mono for Powerline:pixelsize=9:antialia=true:hinting=true
       XTerm*cursorColor:    #545f65
       *background:          #121212
       *foreground:          #babdb6
    ''}"
  '';
}