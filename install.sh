sudo apt install stow
# link dotfiles
# ln -sv ~/.dotfiles/zshrc ~/.zshrc
# ln -sv ~/.dotfiles/vimrc ~/.vimrc
stow zsh
stow vim
stow git -v
stow i3
# ln -sv ~/.dotfiles/gitconfig ~/.gitconfig
# ln -sv ~/.dotfiles/gitignore ~/.gitignore
# ln -sv ~/.dotfiles/config/i3 ~/.config/i3_test
