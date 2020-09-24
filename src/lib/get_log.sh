get_log() {
  from="$1"
  to="$2"
  regex="^- [[:upper:]]"

  set +e
  if [[ -z "$from" ]]; then
    git log $to --pretty=format:'- %s' | grep --color=never -P "$regex"
  else
    git log $from..$to --pretty=format:'- %s' | grep --color=never -P "$regex"
  fi
  set -e
}
