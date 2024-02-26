## Search in a file for `<!-- break (.*) -->` marker and if found, return
## its captured text.
get_break_marker() {
  local filename="$1"
  if [ -f "$filename" ]; then
    grep -oPm 1 '(?<=<!-- break )[^ ]+' "$filename" || echo ""
  else
    echo ""
  fi
}
