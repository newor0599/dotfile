export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="biran"
zstyle ':omz:update' mode disabled  # disable automatic updates
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export TERM=xterm-256color
export EDITOR=nvim
alias torrent=transmission-cli
export TERMINAL=kitty
alias please=sudo
alias pls=sudo
alias hx=helix
bindkey '^h' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white,bg=black"
export PATH=/home/newor/.local/share/gem/ruby/3.4.0/bin:$PATH
