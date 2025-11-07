# Created by newuser for 5.9

# ---- 基本設定 ----
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

# read .zsh
for f in ~/.zsh/*.zsh; do
  source "$f" >/dev/null 2>&1
done

# ---- 関数ディレクトリ ----
ZFUNCDIR="$HOME/workspace_tyamada/dotfiles/zsh/.zsh/functions"

# 配下の .zsh ファイルをすべて autoload 登録
if [ -d "$ZFUNCDIR" ]; then
  fpath=("$ZFUNCDIR" $fpath)
  autoload -Uz $ZFUNCDIR/**/*.zsh(N)
fi

# ---- SSH Agent ----
# WSL環境でkeychainが利用可能な場合のみ使用
# WSLのターミナルセッションごとにSSH agentが独立しているケースへの対策
if command -v keychain >/dev/null 2>&1; then
  eval $(keychain --eval --quiet id_ed25519_tyamada)
fi
