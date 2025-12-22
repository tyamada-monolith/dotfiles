# Created by newuser for 5.9

# ---- 基本設定 ----
export EDITOR=vim
export WORKSPACE="$HOME/workspace_tyamada"

# ---- オプション ----
setopt hist_ignore_all_dups share_history autocd extendedglob
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# ---- 補完 ----
autoload -Uz compinit && compinit

# ---- プロンプト ----
PROMPT='%F{cyan}%n%f:%F{blue}%~%f %# '

# ---- fzf ----
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ---- zoxide ----
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# ---- zsh-abbr ----
# Plugin itself
if [ -f "$HOME/workspace_tyamada/dotfiles/zsh/.zsh/plugins/zsh-abbr/zsh-abbr.plugin.zsh" ]; then
  source "$HOME/workspace_tyamada/dotfiles/zsh/.zsh/plugins/zsh-abbr/zsh-abbr.plugin.zsh"
fi

# read .zsh
for f in ~/.zsh/*.zsh; do
  source "$f" >/dev/null 2>&1
done

# ---- 関数ディレクトリ ----
ZFUNCDIR="$HOME/workspace_tyamada/dotfiles/zsh/.zsh/functions"

if [ -d "$ZFUNCDIR" ]; then
  for f in "$ZFUNCDIR"/*.zsh(.N); do
    source "$f"
  done
fi

# Created by `pipx` on 2025-12-04 06:43:11
export PATH="$PATH:/home/m2million/.local/bin"

# Matrix 

# プロンプト定義 (緑色で [ユーザー名@PC名 ディレクトリ] を表示)
# %B = 太字, %F{green} = 緑文字, %f = 色リセット, %b = 太字解除
PROMPT='%B%F{green}[%n@%m %~]%f%b'

# lsコマンドの色設定（ディレクトリを太字の緑、実行ファイルを明るい緑になど）
export LS_COLORS="di=01;32:ln=01;36:so=01;35:pi=33:ex=01;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;42"

# lsを使った時に自動で色をつけるエイリアス
alias ls='ls --color=auto'

# カーソルを強制的に点滅させる
printf '\e[?12h'
