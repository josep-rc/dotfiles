# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/python@3.9/libexec/bin:$PATH
export PATH=/Users/dcodr/Library/Python/3.9/bin:$PATH
export PATH=/Applications/MAMP/bin/php/php8.0.7/bin:$PATH
export PATH="$HOME/.symfony/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/dcodr/.oh-my-zsh"
ZSH_THEME="dcodr-simple"

# exa theme
export LS_COLORS="di=35"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
alias codei="code-insiders"
alias gl="git --no-pager log --oneline --decorate --graph --all"
alias gs="git status"
alias pear='/Applications/MAMP/bin/php/php8.0.7/bin/pear'
alias pecl='/Applications/MAMP/bin/php/php8.0.7/bin/pecl'
alias composer='/Applications/MAMP/bin/php/composer'
alias ipy="python -m IPython"
alias ls="exa --git --icons"
alias l="exa -l --group-directories-first --git --icons"
alias lt="exa -l -T -L=2 --git --icons"
alias la="exa -l -a --group-directories-first --git --icons"
alias cat="bat --paging=never"
# alias to intel brew /usr/local/Homebrew (defaault)
alias ibrew="arch -x86_64 brew"
# alias to apple silicon brew /opt/homebrew/bin
alias abrew="/opt/homebrew/bin/brew"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
