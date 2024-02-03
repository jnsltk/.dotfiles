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

# !! aliases for getting around quickly
alias kod='cd $HOME/code'
alias c='clear'
alias emb='cd $HOME/code/gu/embedded'

# vim
export EDITOR=nvim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

export BAT_THEME="Solarized (dark)"

# zsh-autosuggestions


# robby
ZSH_THEME="robbyrussell"

# omz plugins
plugins=(git zsh-autosuggestions)

# source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^k' autosuggest-accept

source $ZSH/oh-my-zsh.sh

