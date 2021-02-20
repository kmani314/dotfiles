# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/krishna/.zshrc'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

function chpwd() {
    emulate -L zsh
		ls -a
}

setopt appendhistory
setopt share_history
PS1="%F{blue}%~ %f> "
autoload -Uz compinit
compinit
# End of lines added by compinstall
# (cat ~/.cache/wal/sequences &)
setopt +o nomatch
export PATH=/home/krishna/dev/scripts:/home/krishna/.cargo/bin:/home/krishna/.npm-global/bin:$PATH
alias top='htop'
alias ls='ls -a'
alias git-root='cd $(git rev-parse --show-toplevel)'
alias headphones='bluetoothctl connect 28:11:A5:43:54:09'
alias airpods='bluetoothctl connect B0:35:B5:15:89:37'
alias pm='pulsemixer'
alias vim='nvim'

export EDITOR='nvim'
export VISUAL='nvim'
bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey -v '^?' backward-delete-char
setxkbmap -option caps:escape

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
