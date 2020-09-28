get_tags() {
  git tag --sort=committerdate --format='%(refname:short):%(committerdate:short)' | grep --color=never -P "^(v[[:digit:]]|[[:digit:]])"
}
