export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
zstyle ':omz:update' mode disabled  # disable automatic updates
plugins=(git)
source $ZSH/oh-my-zsh.sh
export TERM=xterm-256color
alias torrent=transmission-cli
export TERMINAL=kitty
alias please=sudo
alias pls=sudo
