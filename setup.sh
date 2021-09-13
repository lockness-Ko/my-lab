# Install tools
sudo apt install tmux && sudo apt install zsh && sudo apt install exa && sudo apt install nmap && sudo apt install tree && sudo apt install cmatrix && sudo apt install ncat && sudo apt install sshpass && sudo apt install openvpn

# Setup tmux
cp ./.tmux.conf ~/.tmux.conf
cp ./.tmux_status ~/.tmux_status
cp ./.tmux_right ~/.tmux_right
cp ./.tmux_wlan.sh ~/.tmux_wlan.sh
cp ./.tmux_openvpn.sh ~/.tmux_openvpn.sh
cp ./.zshrc ~/.zshrc

sudo usermod --shell /usr/bin/zsh `whoami`

echo "REBOOTING IN 10 SECONDS!"
echo ""
echo "PRESS Ctrl+C TO STOP"
sleep 10
sudo reboot
