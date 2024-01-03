sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
# Installs all packages required to use dotfiles
sudo apt-get install xorg lightdm lightdm-gtk-greeter i3-wm i3lock i3status i3blocks dmenu terminator feh papirus-icon-theme gtk2-engines-murrine fonts-font-awesome picom fonts-droid-fallback curl unzip stow zsh
chsh -s $(which zsh)
pip3 install thefuck --user
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# I3 lock color
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
cd ~
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
chmod +x install-i3lock-color.sh
./install-i3lock-color.sh
sudo apt-get remove i3lock
