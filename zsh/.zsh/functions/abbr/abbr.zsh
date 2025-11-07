# dotfiles/zsh/.zsh/functions/abbr/abbr.zsh

# ==========================================
# ZSH Abbreviations Configuration
# ==========================================

# ------------------------------------------
# Basic Commands
# ------------------------------------------
abbr -S v='vim'
abbr -S to='touch'
abbr -S mkd='mkdir'
abbr -S rmd='rmdir'
abbr -S ll='ls -lah'
abbr -S op='explorer.exe'
abbr -S so='source ~/.zshrc'
abbr -S soz='source ~/.zshrc'

# ------------------------------------------
# Editor & Config Files
# ------------------------------------------
abbr -S ws='code ~/workspace'
abbr -S vs='code -r'

# Config editing
abbr -S vzshrc='vim ~/.config/zsh/config.zsh'
abbr -S vzfunc='vim ~/.config/zsh/functions'
abbr -S vab='vim ~/.config/zsh/abbr-list.zsh'
abbr -S vabbr='vim ~/.config/zsh/abbr-list.zsh'
abbr -S val='vim ~/.config/zsh/abbr-list.zsh'
abbr -S vvimrc='vim ~/.vimrc'

# Document editing
abbr -S vtmp='vim ~/workspace/docs/tmp/tmp.md'
abbr -S ctmp='code ~/workspace/docs/tmp/tmp.md'
abbr -S vtips='vim ~/workspace/docs/information/tips.md'
abbr -S ctips='cat ~/workspace/docs/information/tips.md'
abbr -S vd='vim "$(find ~/workspace/docs/daily -name "*.md" -type f -print0 | xargs -0 ls -t | head -1)"'

# ------------------------------------------
# Git Commands
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

# Basic operations
abbr -S ga='git add'
abbr -S gcm='git commit -m'
abbr -S gcl='git clone'
abbr -S gp='git push'
abbr -S gd='git diff'
abbr -S gdh='git diff HEAD'
abbr -S grsh='git reset --soft HEAD^'

# Remote operations
abbr -S grv='git remote -v'
abbr -S grso='git remote show origin'
abbr -S gpo='git pull origin'

# GitHub
abbr -S ghb='gh browse'

# ------------------------------------------
# FZF Integration
# ------------------------------------------
abbr -S vf='vim $(fzf)'
abbr -S gaf='git add $(git ls-files -m | fzf)'
abbr -S cdf='cd $(find . -type d | fzf)'
abbr -S abf='abbr | fzf'

# ------------------------------------------
# Development Tools
# ------------------------------------------
# Clasp (Google Apps Script)
abbr -S cl='clasp'
abbr -S clp='clasp push'
abbr -S clpull='clasp pull'
abbr -S cls='clasp status'
abbr -S clc='clasp clone'
abbr -S clo='clasp-open'

# Node.js
abbr -S nr='npm run'
abbr -S nrd='npm run deploy:dev'
abbr -S nrdd='npm run deploy:dev'
abbr -S nrds='npm run deploy:stg'

# Custom utilities
abbr -S tok='to-kebab'
abbr -S tmd='touch-md'
abbr -S pdoc='pdoc'
abbr -S dsu='~/workspace/docs/daily/daily-startup.sh'

# Release management
# Usage: release v1.2.1 "Directory structure reorganization"
abbr -S rel='release'

# ------------------------------------------
# System Utilities
# ------------------------------------------
abbr -S dfc='colordiff -u'
abbr -S fd='fdfind'
abbr -S tr2d='tree -a -L 2 --dirsfirst'
abbr -S tr2='tree -a -L 2'
abbr -S tr3='tree -a -L 3'

abbr -S py='python3'
abbr -S python='python3'
abbr -S pyt='python3 test.py'
abbr -S vsp='code -r test.py'

abbr -S m2p='md-to-pdf'
