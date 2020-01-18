#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup default nightly
rustup component add rls

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.config/nvim/init.vim --create-dirs \
   https://raw.githubusercontent.com/lendas/config/master/nvim.vim
   
#:PlugInstall
#:CocInstall coc-json coc-tsserver coc-css coc-html coc-phpls coc-rls coc-git coc-yaml coc-xml coc-markdownlint coc-python coc-java coc-r-lsp
