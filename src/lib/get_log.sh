get_log() {
  ref="$1"

  set +e
  git log "$ref" --reverse --format='%s%x09%h%x09%H' |
    while IFS=$'\t' read -r subject short_hash full_hash; do
      printf '%s\n' "$subject" | grep --color=never -P "$CHANGELOG_REGEX" >/dev/null || continue

      if [[ -z $CHANGELOG_COMMIT_URL ]]; then
        line="$subject"
      else
        commit_url=$(expand_commit_url "$CHANGELOG_COMMIT_URL" "$short_hash" "$full_hash")
        line="$subject [\`$short_hash\`]($commit_url)"
      fi

      [[ $line == "- "* ]] || line="- $line"
      printf '%s\n' "$line"
    done
  set -e
}

expand_commit_url() {
  local url="$1"
  local short_hash="$2"
  local full_hash="$3"

  url=${url//%h/$short_hash}
  url=${url//%H/$full_hash}
  printf '%s\n' "$url"
}
