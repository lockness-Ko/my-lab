# Install tools
sudo apt install tmux; sudo apt install zsh; sudo apt install exa; sudo apt install nmap; sudo apt install tree; sudo apt install cmatrix; sudo apt install ncat; sudo apt install sshpass; sudo apt install openvpn

# Setup tmux
cp ./.tmux.conf ~/.tmux.conf
cp ./.tmux_status ~/.tmux_status
cp ./.tmux_right ~/.tmux_right
cp ./.tmux_wlan.sh ~/.tmux_wlan.sh
cp ./.tmux_openvpn.sh ~/.tmux_openvpn.sh
cp ./.zshrc ~/.zshrc

mkdir ~/tools{,/utilities}

cp ./tools/block_ssh.sh ~/tools/utility/
cp ./tools/storage.sh ~/tools/utility/
cd ./tools/nmaper.sh ~/tools/utitlity/

sudo usermod --shell /usr/bin/zsh `whoami`

cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git

echo "Done :)"

zsh
