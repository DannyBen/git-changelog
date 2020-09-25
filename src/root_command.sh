limit="${args[--tail]}"
color="${args[--color]:=auto}"
out="${args[--out]}"

if [[ -n "$out" ]]; then
  get_markdown "$limit" "off" > "$out"
else
  get_markdown "$limit" "$color"
fi

