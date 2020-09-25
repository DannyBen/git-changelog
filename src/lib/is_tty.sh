is_tty() {
  [[ -t 1 || -p /dev/stdout ]]
}