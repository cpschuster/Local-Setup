require 'spec_helper'

programs = [
  'ansible',
  'aptitude',
  'asunder',
  'autojump', 
  'baobab',
  'brasero', 
  'chromium-browser', 
  'clementine',
  'command-not-found',
  'command-not-found-data',
  'crawl-tiles',
  'curl',
  'firefox', 
  'flashplugin-installer', 
  'gedit',
  'git', 
  'gstreamer1.0-plugins-bad', 
  'gstreamer1.0-plugins-base', 
  'gstreamer1.0-plugins-good', 
  'gstreamer1.0-plugins-ugly', 
  'keepassx', 
  'lftp', 
  'libsmpeg0',
  'libreoffice',
  'lynx',
  'mcomix', 
  'mplayer',
  'network-manager',
  'okular',
  'p7zip-full', 
  'redshift-gtk',
  'secure-delete', 
  'sgt-puzzles',
  'software-properties-common',
  'soundconverter',
  'ssh',
  'terminator', 
  'thunderbird', 
  'tor-browser',
  'unattended-upgrades', 
  'unrar', 
  'unzip', 
  'vim',
  'vlc', 
  'wget', 
  'xubuntu-desktop',
  'zsh'
]

programs.each do |program | 
  describe package(program) do 
    it { should be_installed }
  end
end
