# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward

# alias
alias dc='docker compose'
alias ls='exa'
alias g='cd $(ghq list --full-path | peco)'
alias gu='gitui'
alias brew='/opt/homebrew/bin/brew'

# Editor
export EDITOR=nvim
export VISUAL=nvim

# starship
# export STARSHIP_CONFIG=/Users/name/.config/starship.toml

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

# Bat
export BAT_THEME="Dracula"

# Rust
export PATH=$HOME/.cargo/bin

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE="on"

# Ruby
# export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Other path
export PATH="/bin:/usr/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/swagger-codegen@2/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PQ_LIB_DIR="/opt/homebrew/opt/libpq/lib"

# Nodenv
# eval $(nodenv init - | source)

# Start starship
eval "$(starship init zsh)"

