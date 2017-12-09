# Path to your oh-my-zsh installation.
export ZSH=/home/busching/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

plugins=(
  vi-mode git fasd python tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export VISUAL=vim
export EDITOR="$VISUAL"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# The following lines were added by compinstall
zstyle :compinstall filename '/home/busching/.zshrc'

autoload -Uz compinit
compinit
# Endd of lines added by compinstall

bindkey "^P" up-line-or-search
bindkey "^N" up-line-or-search
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^W" backward-kill-word
