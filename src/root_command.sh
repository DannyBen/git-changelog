limit="${args[--tail]}"
out="${args[--out]}"

if [[ -z "$out" ]]; then
  get_markdown "$limit"
else
  get_markdown "$limit" > "$out"
fi

