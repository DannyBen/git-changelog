# Reverse an array
# Usage: reverse "${your_array[@]}"
reverse() {
  arr=("$@")
  printf '%s\n' "${arr[@]}" | tac
}

