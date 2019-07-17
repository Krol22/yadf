sudo gem install colorls

brew install zsh
brew install neovim
brew install node
brew cask install dozer

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
mv ./nvim-osx64 ~/.config/nvim-nightly
rm -rd nvim-macos.tar.gz nvim-osx64

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp -r ./nvim $HOME/.config

rm $HOME/.zshrc
cp ./zshrc $HOME/.zshrc
cp ./antigen.zsh $HOME/.antigen.zsh
cp ./aliases.sh $HOME/.aliases.sh
cp ./.tern-config $HOME/.tern-config
cp ./kitty.conf $HOME/.config/kitty/kitty.conf

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo npm install -g tern

echo "Run :PlugInstall from nvim to install all nvim plugins"
echo "Then run :CocInstall coc-tsserver"
echo "You need still install Spectacle, SwitchResX, Alfred"
echo "Install provided Hacker Nerd Font and apply iterm icon to kitty"
