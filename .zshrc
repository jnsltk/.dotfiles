# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
unsetopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# !! aliases for getting around quickly
alias kod='cd /Users/jnsltk/Developer'
alias c='clear'
alias dentigo='cd /Users/jnsltk/Developer/gu/dentigo'

# vim
export EDITOR=nvim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# other tools
alias ls='exa'

# zsh-autosuggestions

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^o' autosuggest-accept

# node
source $(brew --prefix nvm)/nvm.sh

# STARSHIP
eval "$(starship init zsh)"
