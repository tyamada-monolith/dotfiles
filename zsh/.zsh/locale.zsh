# -----------------------------------------------------------------------------
# locale.zsh
# - ロケール設定
# - manpath: can't set the locale 対策
# -----------------------------------------------------------------------------

# 日本語UTF-8ロケールを使用
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# man コマンドで locale 未生成時の警告を抑止するため
# （ja_JP.UTF-8 が生成されていない環境でも動作させる）
if ! locale -a | grep -q 'ja_JP.utf8'; then
  export LANG=C.UTF-8
  export LC_ALL=C.UTF-8
fi
