get_latest_tag() {
  git tag --sort=committerdate --format='%(refname:short)' | grep --color=never -P "^(v[[:digit:]]|[[:digit:]])" | tail -n 1
}