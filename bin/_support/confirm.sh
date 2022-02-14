#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "${DIR}/cecho.sh"

read_char() {
  stty -icanon -echo
  eval "$1=\$(dd bs=1 count=1 2>/dev/null)"
  stty icanon echo
}

confirm() {
  description=$1

  cecho -n --green "▸" --cyan "${description}?" --yellow "[y/N]"
  read_char CONFIRMATION
  echo -n -e "\b \b"
  CONFIRMATION=$(echo "${CONFIRMATION}" | tr '[:upper:]' '[:lower:]')

  if [[ ! "${CONFIRMATION}" =~ "y" ]]; then
    echo
    cecho --yellow "SKIPPED"
    return 1
  fi
}
