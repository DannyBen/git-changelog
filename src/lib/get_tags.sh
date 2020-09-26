get_tags() {
  limit="$1"
  result=$(git tag --sort=committerdate --format='%(refname:short):%(committerdate:short)' | grep --color=never -P "^(v[[:digit:]]|[[:digit:]])")
  
  if [[ -z "$limit" ]]; then
    echo "$result"
  else
    limit=$(( "$limit" + 1 ))
    echo "$result" | tail -n "$limit"
  fi
}
