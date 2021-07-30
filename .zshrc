#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# alias
alias dc='docker compose'

# Editor
export EDITOR=nvim
export VISUAL=nvim

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

# ls
# export LS_COLORS="$(vivid generate jellybeans)"

# History
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt hist_ignore_dups
export HISTFILE=${HOME}/.zsh_history
export HISTFILESIZE=10000
export HISTSIZE=100000
export HISTTIMEFORMAT="[%F %T]"

# autocomplete
autoload -U compinit
compinit -u
setopt complete_in_word
zstyle ':completion:*:default' menu select=1
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt list_packed
