verify_git_repo

limit="${args[--tail]}"
color="${args[--color]}"
reverse="${args[--reverse]}"
out="${args[--out]}"
save="${args[--save]}"
tail_one="${args[-1]}"
tail_two="${args[-2]}"

if [[ -n "$save" ]]; then
  out="CHANGELOG.md"
  reverse=1
fi

if [[ -n "$tail_one" ]]; then
  limit=1
fi

if [[ -n "$tail_two" ]]; then
  limit=2
fi

if [[ -n "$out" ]]; then
  get_markdown "$limit" "off" "$reverse" > "$out"
else
  get_markdown "$limit" "$color" "$reverse"
fi

