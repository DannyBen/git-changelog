get_log() {
  ref="$1"

  set +e
  git log "$ref" --reverse --format='%s' | grep --color=never -P "^- "
  set -e
}
