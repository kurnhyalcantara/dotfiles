#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

echo "🔗 Linking dotfiles..."

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/nvim/.config/nvim" "$HOME/.config/nvim"

echo "✅ Done"
