if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cp="cp -vi"
alias mv="mv -vi"
alias rm="rm -i"
alias vim="nvim"
alias vi="nvim"

alias ls="colorls"
alias l="colorls"

alias ga="git add"
alias gd="git diff"
alias gc="git commit -m"
alias gs="git status"
alias gp="git push origin"
alias glp="gp -l"

export PATH=~/.npm-global/bin:/usr/local/bin/mongod:/bin:/usr/bin:/usr/local/bin:{$PATH}
export NODE_ENV='development'
export POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
export TERM=tmux-256color

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/Applications/CMake.app/Contents/bin:$PATH"
export PATH="/Users/krol22/Documents/Aseprite/aseprite/build/bin:$PATH"
export PATH="/Users/krol22/Library/Python/3.8/bin:$PATH"
