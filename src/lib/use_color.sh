use_color() {
  if [[ "$COLOR" == "yes" || "$COLOR" == "on" || "$COLOR" == "always" ]]; then
    return 0
  elif [[ "$COLOR" == "no" || "$COLOR" == "off" || "$COLOR" == "never" ]]; then
    return 1
  else
    is_tty
  fi
}
