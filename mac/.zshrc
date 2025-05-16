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

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

HOMEBREW_NO_AUTO_UPDATE=1 

alias c='clear'

# vim
export EDITOR=nvim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gitviz='git log --all --topo-order --graph --show-signature'

# other tools
alias fa='tree --gitignore .'
export BAT_THEME="Solarized (dark)"
# alias cat='bat'
# alias ping='prettyping --nolegend'

# zsh-autosuggestions

# source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# node
source $(brew --prefix nvm)/nvm.sh

# STARSHIP
# eval "$(starship init zsh)"

# robby
ZSH_THEME="robbyrussell"

# omz plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey ^o autosuggest-accept
bindkey -s ^f "tmux-sessionizer\n"


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/jnsltk/.cache/lm-studio/bin"

export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH=$PATH:~/.composer/vendor/bin

export PATH=$PATH:/Users/jnsltk/go/bin/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

