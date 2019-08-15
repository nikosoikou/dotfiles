#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install Brew Packages
brew install python
brew install tree

# Install GNU `find`, `locate`, `updatedb`, and `xargs`.
brew install findutils

# Install other GNU utilities, overwriting the built-ins.
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnu-indent
brew install gnutls
brew install grep
brew install binutils
brew install diffutils
brew install gawk
brew install gzip
brew install screen
brew install watch
brew install wdiff

# Install `wget` with IRI support.
brew install wget

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion@2

# Install more recent versions of some OS X tools.
brew install vim

# Install other useful binaries.
brew install git
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install openssh
brew install rsync
brew install gcc
brew install htop
brew install nmap
brew install geckodriver

# Install MacOS Applications
brew cask install google-chrome
brew cask install firefox
brew cask install sublime-text
brew cask install virtualbox
brew cask install sourcetree
brew cask install spotify
brew cask install google-backup-and-sync
brew cask install skype
brew cask install vlc
brew cask install hyperdock
brew cask install divvy
brew cask install postman
brew cask install vlc
brew cask install skype
brew cask install slack

# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

# Remove outdated versions from the cellar.
brew cleanup
