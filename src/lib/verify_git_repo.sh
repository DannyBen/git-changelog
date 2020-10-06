verify_git_repo() {
  if ! git status &> /dev/null ; then
    abort "Not a git repository"
  fi

  if [[ -z $(get_tags) ]]; then
    abort "There are no usable tags in this repository"
  fi
}
