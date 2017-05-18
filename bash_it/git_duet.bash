function git() {
  if [[ "$1" == disable-duet ]]; then
    export GIT_DUET_DISABLE=1
  elif [[ "$1" == enable-duet ]]; then
    export GIT_DUET_DISABLE=0
  elif [[ "$1" == rotate-pairs ]]; then
    export GIT_DUET_ROTATE_AUTHOR=1
  elif [[ "${GIT_DUET_DISABLE}" == 1 ]]; then
    command git "$@"
  elif [[ "$1" == commit ]] ; then
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

export GIT_DUET_ROTATE_AUTHOR=0
export GIT_DUET_DISABLE=0
