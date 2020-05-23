#!/usr/bin/sh

install_package='sudo pacman -S'
update_packages='sudo pacman -Syu'
remove_package='sudo pacman -R'

install_package_alt='yay -S'
update_packages_alt='yay -Syu'

packages=(
    code
    git
    i3-gaps
    neovim
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-extra
    ntfs-3g
    ranger
    termite
    unzip
    qutebrowser
    xsel
    yarn
    zip
    zsh
)

packages_alt=(
    godot
    polybar
    ufetch
)

# yay installation
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay && makepkg -si && cd ~
rm -r yay

# Install all pendent packages
$install_package ${packages[@]}
$install_package_alt ${packages_alt[@]}

# Change to zsh shell
chsh -s $(which zsh)

mkdir code
mkdir downloads
mkdir godot

# Clone all my dot files
git clone https://github.com/damiiani/dot-files.git
mv dot-files/.* .

# Update everything
$update_packages
$update_packages_alt
