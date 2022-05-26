#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Disable creating .DS_STORE
# cf. https://nori-life.com/delete-ds-store-for-mac/
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Install xcode
xcode-select --install > /dev/null

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null

