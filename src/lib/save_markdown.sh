save_markdown() {
  limit=$1
  reverse=$2
  filename="$3"

  break_before=$(get_break_marker "$filename")
  
  if [[ -n "$break_before" ]]; then
    break_content=$(get_break_content "$filename")
    get_markdown "$limit" "off" "$reverse" "$break_before" >"$filename"
    echo "$break_content" >>"$filename"
  else
    get_markdown "$limit" "off" "$reverse" >"$filename"
  fi
}