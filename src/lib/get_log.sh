get_log() {
  from=$1
  to=${2:-HEAD}

  if [[ -n "$from" ]]; then
    ref="$from..$to"
  else
    ref="$to"
  fi

  set +e
  git log "$ref" --pretty=format:'%s' | grep --color=never -P "^- "
  set -e
}
