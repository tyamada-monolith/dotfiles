# ==========================================
# ZSH Abbreviations Configuration
# ==========================================

# ------------------------------------------
# 🧭 Basic Commands
# ------------------------------------------
abbr -S v='vim'
abbr -S to='touch'
abbr -S mkd='mkdir'
abbr -S rmd='rmdir'
abbr -S ll='ls -lah'
abbr -S op='explorer.exe'
abbr -S so='source ~/.zshrc'
abbr -S soz='source ~/.zshrc'   # alias duplication for convenience

# ------------------------------------------
# ✍️ Editor & Config Files
# ------------------------------------------
abbr -S vs='code -r'
abbr -S vabbr='vim ~/workspace_tyamada/dotfiles/zsh/.zsh/abbr.zsh'

# ------------------------------------------
# 📡 SSH
# ------------------------------------------

abbr -S ssht = ssh -T git@github.com # ssh
abbr -S ssa='[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)" && ssh-add $HOME/.ssh/id_ed25519_tyamada || ssh-add $HOME/.ssh/id_ed25519_tyamada' # key

# ------------------------------------------
# 🧩 Git Commands
# ------------------------------------------

# Branch operations
abbr -S gb='git branch'
abbr -S gbm='git branch -m'
abbr -S gbd='git branch -d'
abbr -S gsw='git switch'
abbr -S gswm='git switch main'
abbr -S gswd='git switch dev'
abbr -S gcob='git checkout -b'

# Status & Log
abbr -S gs='git status'
abbr -S gl='git log'
abbr -S glo='git log --oneline'
abbr -S glg='git log --graph'

# Add / Commit / Diff
abbr -S ga='git add'
abbr -S gcm='git commit -m'
abbr -S gd='git diff'
abbr -S gdh='git diff HEAD'
abbr -S grsh='git reset --soft HEAD~1'

# Remote operations
abbr -S grv='git remote -v'
abbr -S grso='git remote show origin'
abbr -S gpo='git pull origin'
abbr -S gp='git push'
abbr -S gcl='git clone'

# ------------------------------------------
# 🔍 FZF Integration
# ------------------------------------------
abbr -S vf='vim $(fzf)'
abbr -S gaf='git add $(git ls-files -m | fzf)'
abbr -S cdf='cd $(find . -type d | fzf)'
abbr -S abf='abbr | fzf'

# ------------------------------------------
# 🛠️ Development Tools
# ------------------------------------------

# Google Apps Script (Clasp)
abbr -S cl='clasp'
abbr -S clp='clasp push'
abbr -S clpull='clasp pull'
abbr -S cls='clasp status'
abbr -S clc='clasp clone'
abbr -S clo='clasp-open'

# Node.js
abbr -S nr='npm run'
abbr -S nrd='npm run deploy:dev'
abbr -S nrds='npm run deploy:stg'
abbr -S nrf='npm run format' # prettier format

# Custom utilities
abbr -S tok='to-kebab'
abbr -S tmd='touch-md'
abbr -S pdoc='pdoc'
abbr -S run='python3 ~/workspace_tyamada/tools/scripts/run.py'

# Release management
# Usage: rel v1.2.1 "Description"
abbr -S rel='release'

# ------------------------------------------
# ⚙️ System Utilities
# ------------------------------------------
abbr -S dfc='colordiff -u'
abbr -S fd='fdfind'
abbr -S tr2d='tree -a -L 2 --dirsfirst'
abbr -S tr2='tree -a -L 2'
abbr -S tr3='tree -a -L 3'

# ------------------------------------------
# 🐍 Python
# ------------------------------------------
abbr -S py='python3'
abbr -S python='python3'
abbr -S pyt='python3 test.py'
abbr -S vsp='code -r test.py'

# ------------------------------------------
# 📄 Markdown / PDF
# ------------------------------------------
abbr -S m2p='md-to-pdf'

# Docker
abbr -S dc='docker compose'
abbr -S dps='docker ps'
abbr -S dcps='docker compose ps'
abbr -S dcbu='docker compose build' # dcbは予約されていて不可
abbr -S dcp='docker compose pull'
abbr -S dcud='docker compose up -d'
abbr -S dcd='docker compose down'
