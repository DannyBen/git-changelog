use_color() {
  option=${1:-auto}

  if [[ "$option" == "yes" || "$option" == "on" || "$option" == "always" ]]; then
    return 0
  elif [[ "$option" == "no" || "$option" == "off" || "$option" == "never" ]]; then
    return 1
  else
    is_tty
  fi
}
