get_log() {
  ref="$1"

  set +e
  if [[ -z $CHANGELOG_COMMIT_URL ]]; then
    git log "$ref" --reverse --format='%s' | grep --color=never -P "^- "
  else
    git log "$ref" --reverse --format='%s [`%h`]('"$CHANGELOG_COMMIT_URL"')' | grep --color=never -P "^- "
  fi
  set -e
}
