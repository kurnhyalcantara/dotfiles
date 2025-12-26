#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

echo "🔗 Linking dotfiles..."

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/nvim/.config/nvim" "$HOME/.config/nvim"

echo "🔧 Setting up git config..."

ln -sf "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"

if [ ! -f "$HOME/.gitconfig.local" ]; then
  cp "$DOTFILES/git/.gitconfig.local.example" "$HOME/.gitconfig.local"
  echo "📝 Created ~/.gitconfig.local (edit email!)"
fi

echo "✅ Git config ready"

echo "✅ Done"
