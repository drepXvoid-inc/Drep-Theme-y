#!/data/data/com.termux/files/usr/bin/bash

clear
echo "🔥 Installing Drep Theme Y..."

pkg update -y && pkg upgrade -y
pkg install zsh git curl neofetch starship -y

# Set ZSH jadi default
chsh -s zsh

# Copy config
cp config/zshrc ~/.zshrc

mkdir -p ~/.config
cp config/starship.toml ~/.config/starship.toml

mkdir -p ~/.termux
cp config/colors.properties ~/.termux/colors.properties

# Apply setting
termux-reload-settings

echo ""
echo "✅ INSTALL SELESAI!"
echo "👉 Restart Termux bro biar aktif 😎"