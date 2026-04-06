get_sha() {
  ref="$1"
  git log "$ref" --reverse --format='%h%x09%s' |
    while IFS=$'\t' read -r hash subject; do
      printf '%s\n' "$subject" | grep --color=never -P "$CHANGELOG_REGEX" >/dev/null || continue
      printf '%s\n' "$hash"
    done | tail -n 1
}
