get_log() {
  from="$1"
  to="$2"

  if [[ -z "$from" ]]; then
    ref="$to"
  else
    ref="$from..$to"
  fi

  set +e
  git log "$ref" --pretty=format:'%s' | grep --color=never -P "^- "
  set -e
}
