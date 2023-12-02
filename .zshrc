# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/python@3.9/libexec/bin:$PATH
export PATH=/Users/dcodr/Library/Python/3.9/bin:$PATH
export PATH="$HOME/.symfony5/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# deno
export DENO_INSTALL="/Users/dcodr/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export JAVA_HOME=/opt/homebrew/opt/openjdk@11
export ANDROID_HOME=/Users/dcodr/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/emulator/

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
alias gc="git checkout"
alias ipy="python -m IPython"
alias ls="exa --git --icons"
alias l="exa -l --group-directories-first --git --icons"
alias lt="exa -l -T -L=2 --git --icons"
alias la="exa -l -a --group-directories-first --git --icons"
alias cat="bat --paging=never"
alias dk="docker"
alias v="nvim"
alias vim="nvim"

# alias to intel brew /usr/local/Homebrew (defaault)
alias ibrew="arch -x86_64 brew"
# alias to apple silicon brew /opt/homebrew/bin
alias abrew="/opt/homebrew/bin/brew"

# zed editor
alias zed="open -a /Applications/Zed.app -n"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# bun completions
[ -s "/Users/dcodr/.bun/_bun" ] && source "/Users/dcodr/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"
