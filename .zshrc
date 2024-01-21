export ZSH="$HOME/.oh-my-zsh"

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
alias emb='cd /Users/jnsltk/Developer/gu/embedded'

# vim
export EDITOR=nvim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# other tools
alias ls='exa'
export BAT_THEME="Solarized (dark)"
alias cat='bat'
alias ping='prettyping --nolegend'

# zsh-autosuggestions

# source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# bindkey '^k' autosuggest-accept

# node
source $(brew --prefix nvm)/nvm.sh

# STARSHIP
# eval "$(starship init zsh)"

# robby
ZSH_THEME="robbyrussell"

# omz plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jnsltk/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jnsltk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jnsltk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jnsltk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

