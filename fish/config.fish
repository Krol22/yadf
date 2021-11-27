if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cp="cp -vi"
alias mv="mv -vi"
alias rm="rm -i"
alias vim="nvim"
alias vi="nvim"

alias ls="colorls --dark --group-directories-first"
alias l="colorls --dark --group-directories-first"

alias gd="git diff"
alias gc="git commit"
alias gs="git status"
alias gp="git push"
alias glp="gp -l"
alias ga="git add"

fish_add_path /bin
fish_add_path /usr/bin
fish_add_path /usr/local/bin
fish_add_path /usr/local/bin/mongod
fish_add_path ~/.npm-global/bin
fish_add_path ~/.yarn/bin
fish_add_path ~/.config/yarn/global/node_modules/.bin
fish_add_path ~/Documents/Aseprite/aseprite/build/bin
fish_add_path ~/Library/Python/3.8/bin
fish_add_path ~/.platformio/penv/bin

fish_add_path /Applications/Visual Studio Code.app/Contents/Resources/app/bin
fish_add_path /Applications/CMake.app/Contents/bin

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export NODE_ENV='development'
export TERM=tmux-256color

set fish_greeting
