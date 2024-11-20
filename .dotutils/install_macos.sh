#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Homebrew is already installed..."; 

# Checks if Homebrew is installed
# Credit: https://gist.github.com/codeinthehole/26b37efa67041e1307db
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi

# ZSH should already be installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install the essential brews
brew install curl
brew install gpg
brew install pinentry-mac
brew install linode-cli
brew install colima
brew install docker
brew install docker-compose
brew install dog
brew install curlie
brew install jq
brew install kubectl
brew install kubectx
brew install k9s
brew install helm
brew install opentofu
brew install s3cmd
brew install derailed/popeye/popeye
brew install minikube
brew install fzf
brew install htop
brew install mc
brew install imagemagick

# Install GNU utils
brew install coreutils
brew install findutils
brew install gnu-indent
brew install gnu-sed
brew install gnutls
brew install grep
brew install gnu-tar
brew install gawk

# Install essential casks
brew install --cask temurin@11
brew install --cask temurin@17
brew install --cask temurin@21
brew install --cask iterm2

# Update and Upgrade
echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup

