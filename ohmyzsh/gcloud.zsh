PREFIX="$(brew --prefix)"

export CLOUDSDK_PYTHON="${PREFIX}/opt/python@3.9/libexec/bin/python"
source ${PREFIX}/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source ${PREFIX}/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc