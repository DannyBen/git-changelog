get_markdown() {
  limit=$1
  color=$2
  reverse=$3
  break_before=$4

  if [[ -z "$limit" ]]; then
    printf "Changelog\n"
    printf "========================================\n\n"
  fi

  refs=$(get_refs "$limit")

  [[ -n "$reverse" ]] && refs=$(reverse "${refs[@]}")
  [[ -n "$limit" ]] && refs=$(echo "$refs" | tail -n "$limit")

  for tag_data in $refs; do
    IFS=: read -ra data <<<"$tag_data" 
    tag=${data[0]}
    date=${data[1]}
    ref=${data[2]}

    if [[ -n "$break_before" && "$tag" == "$break_before" ]]; then
      break
    fi

    commits=$(get_log "$ref")
    [[ -n "$commits" ]] || continue

    if use_color "$color"; then
      printf "%s - %s\n" "$(green "$tag")" "$(cyan "$date")"
    else
      printf "%s - %s\n" "$tag" "$date"
    fi

    printf -- "----------------------------------------\n\n"

    if [[ -z $CHANGELOG_COMPARE_URL ]]; then
      printf "%s\n\n\n" "$commits"
    else
      # shellcheck disable=SC2059
      # Disabling SC2059 (quoted format string) because we use dynamic format strings
      compare_url=$(printf "$CHANGELOG_COMPARE_URL" "$ref")
      compare_link="Compare [\`$ref\`]($compare_url)"
      printf "%s\n- %s\n\n\n" "$commits" "$compare_link"
    fi
  done
}
