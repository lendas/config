#packages
sudo apt install openssh-server net-tools htop tmux

#docker
curl https://get.docker.com | sh
sudo usermod -aG docker $USER

#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
