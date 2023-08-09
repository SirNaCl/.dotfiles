sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
# Installs all packages required to use dotfiles
sudo apt-get install xorg lightdm lightdm-gtk-greeter i3-wm i3lock i3status i3blocks dmenu terminator feh papirus-icon-theme gtk2-engines-murrine fonts-font-awesome picom fonts-droid-fallback curl unzip stow zsh
chsh -s $(which zsh)
pip3 install thefuck --user
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
