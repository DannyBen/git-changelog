## Search a file for `<!-- break .* -->`, and print the file's content from
## this line onward.
get_break_content() {
  local filename="$1"
  local start_line

  start_line=$(grep -n "<!-- break .* -->" "$filename" | cut -d':' -f1)
  
  if [[ -n "$start_line" ]]; then
    sed -n "${start_line},\$p" "$filename"
  fi
}
