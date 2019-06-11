# YADF
Yet another dot files.

## Installation

Clone repository
```
  git clone https://github.com/krol22/yadf
  cd yadf
```

Launch installation script
```
  chmod +x install.sh
  ./install.sh
```

## Installs:
- [zsh](http://zsh.sourceforge.net)
- [neovim](https://neovim.io) 
- [node](https://nodejs.org/en/)
- [kitty](https://sw.kovidgoyal.net/kitty/index.html)
- [dozer](https://github.com/Mortennn/Dozer)
- [oh-my-zsh](https://ohmyz.sh)
- [antigen.zsh](https://github.com/zsh-users/antigen)
- [colorls](https://github.com/athityakumar/colorls)

Npm packages:
- [tern](https://github.com/ternjs/tern)

`install.sh` script links zsh configuration file (`zshrc`) to `~/.zshrc`. Also it copies `nvim` folder to `~/.config/`. You still need to run command `:PluginInstall` from neovim to install all plugins listed in `nvim/init.vim`.

## Includes aliases:
```
alias cp="cp -vi"
alias mv="mv -vi"
alias rm="rm -i"
alias vim="nvim"
alias vi="nvim"

alias ls="colorls"
alias l="colorls"

alias gd="git diff"
alias gc="git commit -m"
alias gs="git status"
alias gp="git push origin"
alias glp="gp -l"
```

