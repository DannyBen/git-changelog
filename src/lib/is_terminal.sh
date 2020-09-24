is_terminal() {
  [[ -t 1 || -p /dev/stdout ]]
}