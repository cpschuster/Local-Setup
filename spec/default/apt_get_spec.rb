require 'spec_helper'

programs = [
  'anacron',
  'ansible',
  'aptitude',
  'asunder',
  'autojump',
  'baobab',
  'brasero',
  'chromium-browser',
  'clamav',
  'clamav-daemon',
  'clamav-freshclam',
  'clamtk',
  'clementine',
  'command-not-found',
  'command-not-found-data',
  'crawl-tiles',
  'curl',
  'firefox',
  'flashplugin-installer',
  'gedit',
  'git',
  'gnome-disk-utility',
  'gstreamer1.0-plugins-bad',
  'gstreamer1.0-plugins-base',
  'gstreamer1.0-plugins-good',
  'gstreamer1.0-plugins-ugly',
  'haskell-platform',
  'keepassx',
  'keepass2',
  'keychain',
  'lftp',
  'libsmpeg0',
  'libreoffice',
  'lynx',
  'mcomix',
  'mplayer',
  'network-manager',
  'okular',
  'p7zip-full',
  'python2.7',
  'python-setuptools',
  'redshift-gtk',
  'secure-delete',
  'sgt-puzzles',
  'software-properties-common',
  'software-properties-gtk',
  'soundconverter',
  'ssh',
  'syncthing',
  'terminator',
  'thunderbird',
  'tor-browser',
  'truecrypt',
  'ubuntu-desktop',
  'unattended-upgrades',
  'unity-tweak-tool',
  'unrar',
  'unzip',
  'vim',
  'vlc',
  'wget',
  'xdotool',
  'zsh'
]

programs.each do |program |
  describe package(program) do
    it { should be_installed }
  end
end
