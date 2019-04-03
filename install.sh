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

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo npm install -g tern

echo "Run :PlugInstall from nvim to install all nvim plugins"
echo "Then run :CocInstall coc-tsserver"
echo "You need still install VSCode, Spectacle, SwitchResX, Alfred"
