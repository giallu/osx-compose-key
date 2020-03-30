#!/usr/bin/env bash

# Install Karabiner if it isn't installed, but homebrew and cask are.
if [[ "$(type -P brew)" && "$(brew ls --versions brew-cask)" ]]; then
  if [[ ! "$(brew cask list 2>/dev/null | grep karabiner)" ]]; then
    echo "Installing Karabiner..."
    brew cask install karabiner-elements
  fi
else
  echo "Homebrew and Homebrew Cask not detected. Not installing Karabiner."
  echo "If you intended for this script to install Karabiner, install Homebrew"
  echo "and Homebrew Cask:"
  echo
  echo "http://brew.sh/"
  echo "http://caskroom.io/"
  echo
fi

# Copy Karabiner settings.
mkdir -p ~/.config/karabiner/assets/complex_modifications
echo "Copying Karabiner settings..."
cp compose.json ~/.config/karabiner/assets/complex_modifications

# Copy DefaultKeyBinding.dict
mkdir -p ~/Library/KeyBindings
echo "Copying DefaultKeyBinding.dict..."
# use -b option to backup existing file if present
cp -b DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict

echo
echo "Done."
