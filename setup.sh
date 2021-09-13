# Install tools
sudo apt install tmux; sudo apt install zsh; sudo apt install exa; sudo apt install nmap; sudo apt install tree; sudo apt install cmatrix; sudo apt install ncat; sudo apt install sshpass; sudo apt install openvpn

# Setup tmux
cp ./.tmux.conf ~/.tmux.conf
cp ./.tmux_status.sh ~/.tmux_status.sh
chmod +x ~/.tmux_status.sh
cp ./.tmux_right.sh ~/.tmux_right.sh
chmod +x ~/.tmux_right.sh
cp ./.tmux_wlan.sh ~/.tmux_wlan.sh
chmod +x ~/.tmux_wlan.sh
cp ./.tmux_openvpn.sh ~/.tmux_openvpn.sh
chmod +x ~/.tmux_openvpn.sh
cp ./.zshrc ~/.zshrc

mkdir ~/tools

cp ./tools/block_ssh.sh ~/tools/block_ssh.sh
cp ./tools/storage.sh ~/tools/storage.sh
cp ./tools/nmaper.sh ~/tools/nmaper.sh

sudo usermod --shell /usr/bin/zsh `whoami`

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git

echo "Done :)"

tmux
