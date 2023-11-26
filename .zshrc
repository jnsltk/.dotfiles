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
alias janos='cd /home/jnsltk/code/personal/svelte/janoslitkei.com/'
alias kod='cd /home/jnsltk/code'
alias c='clear'
alias dentigo='cd /home/jnsltk/code/gu/dentigo'
alias wp1='feh --bg-fill /home/jnsltk/Pictures/wallpaper1.JPG'
alias wp2='feh --bg-fill /home/jnsltk/Pictures/wallpaper2.JPG'

# GO stuff
export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"

# vim
export EDITOR=nvim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# other tools
alias ls='exa'

# zsh-autosuggestions

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^o' autosuggest-accept

# STARSHIP
eval "$(starship init zsh)"
