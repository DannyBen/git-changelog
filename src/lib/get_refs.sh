# Returns an array, where each line is "tag:date:ref"
# It is the same as get tags, only with added ref
get_refs() {
  for tag_data in $(get_tags); do
    tag=${tag_data%:*}
    date=${tag_data#*:}

    if [[ -z "$last_tag" ]]; then
      ref="$tag"
    else
      ref="$last_tag..$tag"
    fi
    last_tag="$tag"
    printf "$tag_data:$ref\n"
  done

  printf "Untagged:Latest:$last_tag..HEAD"
}
