function git() {
  if [[ "$1" == commit ]] ; then
    shift
    command git duet-commit "$@"
  elif [[ "$1" == revert ]] ; then
    shift
    command git duet-revert "$@"
  else
    command git "$@"
  fi
}

export -f git

export GIT_DUET_ROTATE_AUTHOR=1
