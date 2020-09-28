get_sha() {
  ref="$1"
  result=$(git log "$ref" --reverse --format='%h:::%s' | grep --color=never -P ":::- " | tail -n 1)
  echo "${result%:*}"
}