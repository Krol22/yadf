sudo gem install colorls
brew install zsh
brew install neovim
brew cask install dozer
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
ln ~/.config/yadf/zshrc ~/.zshrc
cp -r ./nvim/ ~/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim/
echo "Run :PluginInstall from nvim to install all nvim plugins"

echo "You need still install VSCode, Spectacle, SwitchResX, Alfred";
