limit="${args[--tail]}"
color="${args[--color]}"
reverse="${args[--reverse]}"
out="${args[--out]}"
save="${args[--save]}"

if [[ -n "$save" ]]; then
  out="CHANGELOG.md"
  reverse=1
fi

if [[ -n "$out" ]]; then
  get_markdown "$limit" "off" "$reverse" > "$out"
else
  get_markdown "$limit" "$color" "$reverse"
fi

