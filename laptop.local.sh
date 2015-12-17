#!/bin/sh

# Run Apple Software Update/Apply Them
sudo softwareupdate -i -a

# Cask Install
brew_tap 'caskroom/cask'
brew_install_or_upgrade 'brew-cask'

# Browsers
brew cask install google-chrome
brew cask install firefox

# Productivity
brew cask install alfred

# Storage/Documents
brew cask install dropbox
brew cask install google-drive
brew cask install google-photos-backup
brew cask install evernote

# Design
brew cask install balsamiq-mockups
brew cask install ember
brew cask install noun-project
brew cask install skyfonts
brew cask install colorsnapper

# Development
brew cask install iterm2
brew cask install macvim
brew cask install codekit
brew cask install sublime-text
brew cask install boot2docker
brew cask install github-desktop
brew cask install mamp
brew cask install transmit
brew cask install vmware-fusion
brew cask install virtualbox
brew cask install sourcetree
brew cask install dash
brew cask install java
brew install bash-completion
brew install elasticsearch
brew install nvm
source $(brew --prefix nvm)/nvm.sh

# Database
brew cask install postico
brew cask install navicat-for-sqlite
brew cask install navicat-for-postgresql
brew cask install adobe-illustrator-cc
brew cask install sketch

# Communication
brew cask install slack
brew cask install skype
brew cask install adium
brew cask install joinme
brew cask install gpgtools

# Media/Entertainment
brew cask install pocketcast
brew cask install spotify
brew cask install silverlight
brew cask install music-manager
brew cask install radiant-player
brew cask install kindle
brew cask install adobe-photoshop-lightroom
brew cask install gopro-studio
brew cask install vlc
brew cask install vlcstreamer
brew cask install google-photos-backup

# Utilities
brew cask install chrome-remote-desktop-host
brew cask install hazel
brew cask install alfred
brew cask install menumeters
brew cask install fantastical
brew cask install crashplan
brew cask install duet
brew cask install resolutionator
brew cask install dash
brew cask install drobo-dashboard
brew cask install carbon-copy-cloner
brew cask install superduper
brew cask install handbrake
brew cask install transmission
brew cask install google-earth
brew cask install the-unarchiver
brew cask install remote-desktop-connection
brew cask install screenflow
brew cask install gpgtools
brew cask install istat-menus
brew cask install a-better-finder-rename

# Security
brew cask install yubico-authenticator
brew cask install yubikey-personalization-gui
brew cask install lastpass
brew cask install 1password

# Install Specialized Software From Secure Storage
if [ -d "/Volumes/installer/software/" ]; then
  cp -r /Volumes/installer/software/ /Applications
fi

# Install SSH Keys From Secure Storage
if [ -d "/Volumes/installer/keys/" ]; then
  cp -r /Volumes/installer/keys/ $HOME/.ssh
fi

#Install Alfred License From Secure Storage
if [ -f "/Volumes/installer/alfred/license.plist" ]; then
  cp -f /Volumes/installer/alfred/license.plist $HOME/Library/Application\ Support/Alfred\ 2/
fi

# Install Dot Files