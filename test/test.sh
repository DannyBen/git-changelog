#!/usr/bin/env bash
export APPROVALS_DIR=$PWD/test/approvals
PATH="$PWD:$PATH"
pushd test/sample-repo > /dev/null
source "../approvals.bash"

describe "git-changelog --help"
  approve "git-changelog --help"

describe "git changelog"
  approve "git-changelog"

describe "git changelog --tail"
  approve "git-changelog --tail 2"

popd > /dev/null

