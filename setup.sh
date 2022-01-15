# Install tools
sudo apt install -y tmux zsh exa nmap cmatrix sshpass openvpn

# Setup tmux
mv ./.tmux.conf ~/.tmux.conf
mv ./.tmux_status.sh ~/.tmux_status.sh
chmod +x ~/.tmux_status.sh
mv ./.tmux_right.sh ~/.tmux_right.sh
chmod +x ~/.tmux_right.sh
mv ./.tmux_wlan.sh ~/.tmux_wlan.sh
chmod +x ~/.tmux_wlan.sh
mv ./.tmux_openvpn.sh ~/.tmux_openvpn.sh
chmod +x ~/.tmux_openvpn.sh
mv ./.zshrc ~/.zshrc

mkdir ~/tools

mv ./tools/block_ssh.sh ~/tools/block_ssh.sh
mv ./tools/storage.sh ~/tools/storage.sh
mv ./tools/nmaper.sh ~/tools/nmaper.sh

sudo usermod --shell /usr/bin/zsh `whoami`

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git

echo "Done :)"

tmux
