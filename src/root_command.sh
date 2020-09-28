limit="${args[--tail]}"
color="${args[--color]}"
reverse="${args[--reverse]}"
out="${args[--out]}"

if [[ -n "$out" ]]; then
  get_markdown "$limit" "off" "$reverse" > "$out"
else
  get_markdown "$limit" "$color" "$reverse"
fi

