function pdoc() {
  local in="$1"
  local out="${in%.md}.docx"
  pandoc "$in" -o "$out" --highlight-style=tango --toc
}

