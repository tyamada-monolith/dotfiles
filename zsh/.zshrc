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

if [ -d "$ZFUNCDIR" ]; then
  fpath=("$ZFUNCDIR" $fpath)
  # ※ autoload は「関数名」を渡す必要あり（拡張子を剥がす）
  for f in "$ZFUNCDIR"/*.zsh(.N); do
    autoload -Uz "${f:t:r}"
  done
fi

# ---- SSH Agent ----
# WSL環境でkeychainが利用可能な場合のみ使用
# WSLのターミナルセッションごとにSSH agentが独立しているケースへの対策
# 初回（WSLを起動した直後）の一回だけパスフレーズを聞かれる
# その後のシェルでは聞かれなくなります。
if command -v keychain >/dev/null 2>&1; then
  export SSH_KEYS=(~/.ssh/id_ed25519_tyamada)
  eval "$(keychain --quiet --eval --agents ssh ${SSH_KEYS[@]})"
fi

