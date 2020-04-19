function . {
    if [[ $# -eq 0 ]]; then
        reload
    else
        builtin . "$@"
    fi
}

function reload {
  echo "Reloading zsh profile" >&2
  builtin . ~/.zshrc
}