#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for dotfile in "${SCRIPT_DIR}"/../??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/README.md" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/LICENSE" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/bin" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done

