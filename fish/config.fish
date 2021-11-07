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

alias gd="git diff"
alias gc="git commit"
alias gs="git status"
alias gp="git push"
alias glp="gp -l"
alias ga="git add"

export PATH="$HOME/.npm-global/bin:/usr/local/bin/mongod:/bin:/usr/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/Applications/CMake.app/Contents/bin:$PATH"
export PATH="/Users/krol22/Documents/Aseprite/aseprite/build/bin:$PATH"
export PATH="/Users/krol22/Library/Python/3.8/bin:$PATH"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export NODE_ENV='development'
export TERM=tmux-256color

