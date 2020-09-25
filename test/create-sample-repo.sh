#!/usr/bin/env bash
set -e

commit() {
  message="$1"
  echo $RANDOM > file
  git add . && git commit -am "$message"
  sleep 1
}

tag() {
  git tag v0.$tag.0
  tag=$(( $tag + 1 ))
}

tag=1

rm -rf sample-repo
mkdir sample-repo
cd ./sample-repo
git init

commit "- Initial version"
tag
git tag ignore-this-tag

commit "commit message that will not show"
commit "- Second change log item"
tag

commit "another commit message that will not show"
commit "- This is the third version"
commit "- This is a big version with multiple commits"
tag

commit "- Version without the v prefix"
git tag 1.0.0

../../git-changelog
