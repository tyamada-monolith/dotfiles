# dotfiles

WSL (Ubuntu) 向けの zsh ベース開発環境設定。  
`GNU Stow` でホームディレクトリへ展開する構成。
最小限のパッケージのみを利用する。

## 必要パッケージ

```bash
sudo apt update
sudo apt install -y \
  stow \
  fzf \
  zoxide \
  tree \
  keychain
```

## 初期セットアップ

```sh
# dotfiles を clone
git clone https://github.com/<yourname>/dotfiles.git ~/workspace/dotfiles
cd ~/workspace/dotfiles

# Stow で設定反映
stow -v -t ~ zsh git fzf

# 更新
cd ~/workspace/dotfiles
git pull
stow -Rvt ~ zsh git fzf
```

## プラグイン

### zsh-abbr

Fish の abbr 機能を再現する zsh プラグイン。
~/.zshrc にて自動的に読み込まれる。

```sh
mkdir -p ~/workspace/dotfiles/zsh/.zsh/plugins
cd ~/workspace/dotfiles/zsh/.zsh/plugins
# git clone https://github.com/olets/zsh-abbr.git
git clone --recurse-submodules https://github.com/olets/zsh-abbr.git # 


# プラグイン更新
cd ~/workspace/dotfiles/zsh/.zsh/plugins/zsh-abbr
git pull
```

zsh-abbr v6 以降は内部で zsh-job-queue を依存ライブラリとして利用しているので注意。
サブモジュールまで取得する必要がある。

## zsh 設定概要

- fzfによる各種検索
- zoxideによるディレクトリジャンプ (z <path>)
- abbrによる短縮コマンド登録 (abbr -a gs 'git status')

## keychain
WSLでは各ターミナルセッションごとにssh-agentが独立してしまうため、毎回ssh-agentを登録しないといけない。
その手間を省くため、keychainを利用する。
最初の起動時だけパスワードを入力すれば、その後のセッションでは自動的に鍵が設定される。

## 備考

- 外部プラグインは.gitignoreで済み
- 秘匿ファイルや個別設定は .gitconfig.local / .zshrc.local に記述
