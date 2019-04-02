sudo gem install colorls

brew install zsh
brew install neovim
brew install node
brew cask install iterm2
brew cask install dozer

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp -r ./nvim $HOME/.config

rm $HOME/.zshrc
ln $HOME/.config/yadf/zshrc $HOME/.zshrc
cp ./antigen.zsh $HOME/.antigen.zsh
cp ./aliases.sh $HOME/.aliases.sh
cp ./.tern-config $HOME/.tern-config

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.config/nvim/bundle/Vundle.vim/

echo "Run :PluginInstall from nvim to install all nvim plugins"
echo "You need still install VSCode, Spectacle, SwitchResX, Alfred";
