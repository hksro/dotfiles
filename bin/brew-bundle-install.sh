#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cp -p "${SCRIPT_DIR}"/../.Brewfile ${HOME}/

brew bundle --global

