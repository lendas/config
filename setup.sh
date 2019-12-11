#packages
sudo apt install openssh-server net-tools htop tmux git subversion pv npm

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

curl -fLo ~/.config/nvim/init.vim --create-dirs \
   https://raw.githubusercontent.com/lendas/config/master/nvim.vim
   
#:PlugInstall
#:CocInstall coc-json coc-tsserver coc-css coc-html coc-phpls coc-rls coc-git coc-rust-analyzer coc-yaml coc-xml coc-markdownlint coc-python coc-java coc-r-lsp
