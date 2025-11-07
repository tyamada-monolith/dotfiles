to-kebab() {
  echo "$*" | tr '[:upper:]' '[:lower:]' | sed 's/[ _]/-/g' | tr -s '-'
}

