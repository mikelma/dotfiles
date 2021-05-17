#!/bin/sh

dots="$HOME/.config"

# ----------- neovim ----------- #
dest="nvim"
rsync -a "$dots/nvim/lua" $dest
rsync "$dots/nvim/init.lua" $dest
rsync "$dots/nvim/dashboard.vim" $dest
# ----------- neovim ----------- #

# --------- alacritty ---------- #
rsync -a "$dots/alacritty" .
# --------- alacritty ---------- #

# ---------- spectrwm ---------- #
mkdir -p "spectrwm"
cp "$HOME/.spectrwm.conf" "spectrwm/spectrwm.conf"
# ---------- spectrwm ---------- #
