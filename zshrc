export PATH=~/.npm-global/bin:/usr/local/bin/mongod:/bin:/usr/bin:/usr/local/bin:${PATH}
export ZSH=/Users/${USER}/.oh-my-zsh

export JAVA_HOME=`/usr/libexec/java_home -v 1.8 &>/dev/null`
export NODE_ENV='development'

source ~/.config/yadf/antigen.zsh
source $ZSH/oh-my-zsh.sh
source ~/.config/yadf/aliases.sh

antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle fcambus/ansiweather

antigen theme lambda

antigen apply

alias aliases="cat ~/.config/aliases"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
