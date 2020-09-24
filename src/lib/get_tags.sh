get_tags() {
  limit="$1"
  result=$(git tag --sort=v:refname --format='%(refname:short):%(creatordate:short)')
  
  if [[ -z "$limit" ]]; then
    echo "$result"
  else
    limit=$(( "$limit" + 1 ))
    echo "$result" | tail -n "$limit"
  fi
}
