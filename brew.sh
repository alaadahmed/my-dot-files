#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
# if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
#   echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
#   chsh -s /usr/local/bin/bash;
# fi;

# Install Zsh 5.4.2
# Note: don't forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install zsh
brew install zsh-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install macvim --with-override-system-vim --with-lua
#brew install grep
brew install wget

# Install other useful binaries that I always use.
brew install httpd
brew install php72 --with-httpd
brew install ctags 
brew install fzf
#brew install git
#brew install git-flow
brew install heroku
#brew install lua
#brew install macvim --with-override-system-vim --with-lua
brew install node
brew install yarn
brew install tree
#brew install imagemagick --with-webp
#brew install rbenv
#brew install sqlite
brew install autoconf

# Remove outdated versions from Cellar and cleanup.
brew cleanup



























