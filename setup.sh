#packages
sudo apt install openssh-server net-tools htop tmux git subversion pv 

#docker
curl https://get.docker.com | sh
sudo usermod -aG docker $USER

#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env


#neovim
cd ~
mkdir .nv
cd .nv
  curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
  chmod u+x nvim.appimage
  echo "alias nv='~/.nv/nvim.appimage'" >> ~/.bashrc
cd ~

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config/nvim

