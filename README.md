Guide used: https://itsfoss.com/i3-customization/

I3:
Step 1:
Run the install script located in this folder

Step 2:
Enable the wm using the following commands before logging out and in from the system:


sudo systemctl enable lightdm.service
sudo systemctl start lightdm.service

GUI theme:
Extract the contents of theme.zip into ~/.themes and select the theme using "lxappearance" which can be launched using mod+d
todo: folders and icons

Terminator colors:
Text: #C6D0F5
BG: #303446

### Neovim (Astro):
#### https://astronvim.com/
Install node:
https://github.com/nodesource/distributions
sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

Install neovim and dependencies:
https://github.com/neovim/neovim/releases/tag/stable
´´´
sudo apt-get install python3-neovim
npm install tree-sitter-cli
sudo apt-get install ripgrep
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
sudo apt install gdu
curl https://sh.rustup.rs -sSf | sh
rustup update stable
cargo install bottom --locked
´´´

Once installation is complete, use the stow command inside the .dotfiles directory to link configuration files








