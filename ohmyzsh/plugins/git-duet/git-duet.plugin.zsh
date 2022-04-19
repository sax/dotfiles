# function git() {
#   if [[ "$1" == commit ]] ; then
#     shift
#     command git duet-commit "$@"
#   elif [[ "$1" == revert ]] ; then
#     shift
#     command git duet-revert "$@"
#   else
#     command git "$@"
#   fi
# }

# export GIT_DUET_ROTATE_AUTHOR=1
# export GIT_DUET_CO_AUTHORED_BY=1
# export GIT_DUET_SET_GIT_USER_CONFIG=1

