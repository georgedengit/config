# Setup
export ZSH=$HOME/.oh-my-zsh
export ZSH_OTHER=$HOME/Projects/config

# Theme
ZSH_THEME="pygmalion"

# Plugins
if [[ "$OSTYPE" == "darwin"* ]]; then
	plugins=(git npm colored-man colorize github vagrant virtualenv pip python brew osx zsh-syntax-highlighting)
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	plugins=(git npm colored-man colorize github vagrant virtualenv pip python zsh-syntax-highlighting)
fi

# Sources
source $ZSH/oh-my-zsh.sh
source $ZSH_OTHER/env.sh
source $ZSH_OTHER/npm-completion.sh
source /usr/local/opt/nvm/nvm.sh

# Aliases
alias zshconfig="subl ~/.zshrc"
alias envconfig="subl $ZSH_OTHER/env.sh"
alias sourcezsh="source ~/.zshrc"
