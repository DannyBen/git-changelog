get_markdown() {
  limit=$1
  color=$2
  reverse=$3

  if [[ -z "$limit" ]]; then
    printf "Change Log\n"
    printf "========================================\n\n"
  fi

  refs=$(get_refs "$limit")

  [[ -n "$reverse" ]] && refs=$(reverse "${refs[@]}")
  [[ -n "$limit" ]] && refs=$(echo "$refs" | tail -n "$limit")

  for tag_data in $refs; do
    IFS=: read -ra data <<< "$tag_data" 
    tag=${data[0]}
    date=${data[1]}
    ref=${data[2]}

    commits=$(get_log "$ref")

    if [[ -n "$commits" ]]; then
      if use_color "$color" ; then
        printf "%s - %s\n" "$(green "$tag")" "$(cyan "$date")"
      else
        printf "%s - %s\n" "$tag" "$date"
      fi

      printf -- "----------------------------------------\n\n"
      printf "%s\n\n\n" "$commits"
    fi
  done
}
