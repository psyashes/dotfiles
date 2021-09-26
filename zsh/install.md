# Install for Ubuntu, Debian

## Install zsh
```bash
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install zsh
```

zsh 起動後、`prezto`をinstall
```bash
$ zsh
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
$ chsh -s /usr/bin/zsh
```

```bash
$ setopt EXTENDED_GLOB  
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do  
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"  
done
```
symbolic linkでエラーがでた場合、`ln`に`-f`をつけて強制的にoverwriteする

再起動 これでテーマが反映される
```bash
sudo reboot
```

## 初期 `.zshrc`

```bash
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

# 補完機能
autoload -U compinit
compinit -u

# 単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

# page keyでhistory移動
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
```

適用
```bash
source ~/.zshrc
```

## .zpreztorc`
テーマの設定は`.zpreztorc`ファイルの116行目に書かれている。
```bash
zstyle ':prezto:module:prompt' theme 'pure'
```

履歴からの自動補完を追加
```bash
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'syntax-highlighting' \ #追加
  'autosuggestions' \ #追加
```

shellを再起動
```bash
$ exec $SHELL -l
```
