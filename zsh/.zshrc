# Created by newuser for 5.9

# ---- 基本設定 ----
export LANG=ja_JP.UTF-8
export EDITOR=vim

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

# Abbreviation definitions
ABBRCONF="$HOME/workspace_tyamada/dotfiles/zsh/.zsh/functions/abbr/abbr.zsh"
[ -f "$ABBRCONF" ] && source "$ABBRCONF"

# ---- 関数ディレクトリ ----
ZFUNCDIR="$HOME/workspace_tyamada/dotfiles/zsh/.zsh/functions"

# 配下の .zsh ファイルをすべて autoload 登録
if [ -d "$ZFUNCDIR" ]; then
  fpath=("$ZFUNCDIR" $fpath)
  autoload -Uz $ZFUNCDIR/**/*.zsh(N)
fi
