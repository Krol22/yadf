sudo gem install colorls

brew install neovim
brew install node
brew cask install dozer
brew install alacritty
brew install tmux

brew install fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

brew tap caskroom/cask
brew tap koekeishiya/formulae

brew cask install ubersicht

brew install neofetch
brew install fd
brew install lazygit

git clone https://github.com/zzzeyez/pecan.git "$HOME/Library/Application Support/Übersicht/widgets/pecan"

cp ./pecan/style.css $HOME/Library/Application\ Support/Übersicht/widgets/pecan/style.css

cp -r ./nvim $HOME/.config

cp ./alacritty ~/.config/alacritty
cp ./fish/config.fish ~/.config/fish/config.fish
cp ./tmux/tmux.conf ~/.tmux.conf

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
