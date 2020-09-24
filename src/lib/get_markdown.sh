get_markdown() {
  limit="$1"
  skip_first="$limit"

  printf "Change Log\n"
  printf "========================================\n\n"

  for tag_data in $(get_tags "$limit"); do
    tag=${tag_data%:*}
    date=${tag_data#*:}

    if [[ -z "$last_tag" ]]; then
      from=''
      to=$tag
      last_tag=$tag
    else
      from=$last_tag
      to=$tag
      last_tag=$tag
    fi

    if [[ $skip_first ]]; then
      skip_first=''
      continue
    fi

    commits=$(get_log "$from" "$to")

    if [[ ! -z "$commits" ]]; then
      if is_terminal; then
        printf "%s - %s\n" $(green $tag) $(cyan $date)
      else
        printf "%s - %s\n" $tag $date
      fi

      printf -- "----------------------------------------\n\n"
      printf "%s\n\n\n" "$commits"
    fi
  done
}
