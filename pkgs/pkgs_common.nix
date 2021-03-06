{ config, pkgs, lib, ... }:

{
  nixpkgs.config = {
    pulseaudio = true;

    allowUnfree = true;

    systemd = {
      enableKDbus = true;
    };

    conky = {
      weatherMetarSupport = true;
      mpdSupport = true;
      wirelessSupport = true;
      x11Support = false;
    };

    virtualbox = {
      enableExtensionPack = false;
    };

    mpv = {
      youtubeSupport = true;
    };
  };

  environment.systemPackages = with pkgs; [
    #(lib.overrideDerivation mcabber (o: { buildInputs = (o.buildInputs or []) ++ lib.singleton pkgs.gpgme; }))
    abook
    accountsservice
    apg
    ascii
    aspell
    aspellDicts.de
    aspellDicts.en
    atom
    attic
    audacity
    axel
    bc
    biber
    bind
    bup
    cacert
    cataclysm-dda
    ccrypt
    chromaprint
    chromium
    cifs_utils
    cmake
    colordiff
    conky
    cryptsetup
    ctodo
    cuetools
    darkstat
    dcfldd
    ddrescue
    dmenu
    dmidecode
    dos2unix
    duff
    easytag
    emacs
    enhanced-ctorrent
    ethtool
    evince
    fbida
    fdupes
    feh
    ffmpeg
    figlet
    file
    firefox
    flac
    foremost
    freerdpUnstable
    gajim
    gcc
    gdb
    ghostscript
    gimp
    gitAndTools.git-annex
    gitAndTools.git-extras
    gitAndTools.git-remote-hg
    gitAndTools.git2cl
    gitAndTools.gitFastExport
    gitAndTools.gitFull
    gitAndTools.gitRemoteGcrypt
    gitAndTools.gitSVN
    gitAndTools.gitflow
    gitAndTools.svn2git
    gitAndTools.tig
    glxinfo
    gnome3.dconf
    gnome3.defaultIconTheme
    gnome3.gnome_themes_standard
    gnufdisk
    gnupg
    gnupg1compat
    gource
    gparted
    gpgme
    gptfdisk
    graphviz
    gstreamer
    hdparm
    hexedit
    hplipWithPlugin
    htop
    i3lock
    i3status
    icedtea_web
    iftop
    imagemagick
    impressive
    inkscape
    iotop
    iptraf-ng
    ipv6calc
    jfsutils
    john
    jwhois
    keepassx
    kpcli
    lftp
    libarchive
    libreoffice
    lm_sensors
    lsof
    lxappearance
    lxc
    lynx
    manpages
    mcabber
    mdp
    mediainfo
    mmv
    monkeysAudio
    mono
    monodevelop
    mosh
    mp3gain
    mpc_cli
    mpv
    mtr
    ncdu
    ncmpcpp
    nethack
    nethogs
    netrw
    netsniff-ng
    nitrogen
    nix-prefetch-scripts
    nixops
    nload
    nmap
    ntfs3g
    ntfsprogs
    ntopng
    numix-icon-theme
    obnam
    openssl
    p7zip
    pandoc
    paperkey
    pass
    pasystray
    pavucontrol
    pciutils
    picard
    posix_man_pages
    powertop
    profanity
    profile-cleaner
    profile-sync-daemon
    pv
    python
    python2
    python3
    python34Packages.hovercraft
    pythonPackages.rainbowstream
    qrencode
    recode
    reiserfsprogs
    ruby
    safecopy
    screen
    scrot
    shntool
    silver-searcher
    sleuthkit
    smartmontools
    sox
    spek
    ssdeep
    stow
    strace
    super-user-spark
    surfraw
    taskwarrior
    telnet
    testdisk
    texLiveFull
    texmacs
    tmux
    toilet
    tomahawk
    transmission_remote_gtk
    tree
    tribler
    udevil
    units
    unrar
    unzip
    valgrind
    vim_configurable
    virtmanager
    vit
    vlc
    vlock
    vnstat
    vorbisTools
    vorbisgain
    w3m
    wavpack
    weechat
    wget
    which
    wireshark
    xfsprogs
    xlibs.xev
    xpdf
    xpra
    xscreensaver
    youtube-dl
    zbar
    zip
    zotero
    zsync
  ];
}
