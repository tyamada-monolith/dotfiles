# Git tag関連の関数
release() {
  if [[ $# -lt 2 ]]; then
    echo "Usage: release <version> <message>"
    echo "Example: release v1.2.1 'Directory structure reorganization'"
    return 1
  fi
  git tag "$1" -m "$1: $2" && git push origin "$1"
}

