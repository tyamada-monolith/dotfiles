function clasp-open() {
  if [ -f .clasp.json ]; then
    local id=$(grep '"scriptId"' .clasp.json | cut -d '"' -f 4)
    if [ -n "$id" ]; then
      /mnt/c/Windows/explorer.exe "https://script.google.com/d/${id}/edit"
    else
      echo "scriptId が .clasp.json から取得できませんでした。"
    fi
  else
    echo ".clasp.json がこのディレクトリにありません。"
  fi
}

