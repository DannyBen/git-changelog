# Returns success if the repository has meaningful commits after the last tag
has_latest() {
  latest_tag=$(get_latest_tag)
  latest_tag_sha=$(get_sha "$latest_tag")
  head_sha=$(get_sha HEAD) 

  [[ "$latest_tag_sha" != "$head_sha" ]]
}