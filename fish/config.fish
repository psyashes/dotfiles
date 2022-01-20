# alias
alias dc='docker compose'
alias ls='exa'
alias g='cd (ghq list --full-path | peco)'
alias gu='gitui'

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
export PATH="$HOME/.cargo/bin:$PATH"

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE="on"

# Ruby
# export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Other path
export PATH="/usr/local/bin:$PATH"
export PATH="/bin:/usr/bin:$PATH"
# export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

starship init fish | source
