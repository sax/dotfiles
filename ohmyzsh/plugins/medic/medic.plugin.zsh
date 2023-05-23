function doc() {
  if [[ -f bin/dev/doctor ]]; then
    echo "== \e[37;1mRunning bin/dev/doctor\e[0m"
    bin/dev/doctor
  elif [[ -f .medic/config.toml ]]; then
    echo "== \e[37;1mRunning medic doc\e[0m"
    medic doc
  else
    echo "Neither bin/dev/doctor nor .medic/config.toml exist" >&2
    return 1
  fi
}

function shipit() {
  if [[ -f bin/dev/shipit ]]; then
    echo "== \e[37;1mRunning bin/dev/shipit\e[0m"
    bin/dev/shipit
  elif [[ -f .medic/config.toml ]]; then
    echo "== \e[37;1mRunning medic ship\e[0m"
    medic ship
  else
    echo "Neither bin/dev/doctor nor .medic/config.toml exist" >&2
    return 1
  fi
}

function t() {
  if [[ -f bin/dev/test ]]; then
    echo "== \e[37;1mRunning bin/dev/test\e[0m"
    bin/dev/test
  elif [[ -f .medic/config.toml ]]; then
    echo "== \e[37;1mRunning medic test\e[0m"
    medic test
  else
    echo "Neither bin/dev/doctor nor .medic/config.toml exist" >&2
    return 1
  fi
}

function up() {
  if [[ -f bin/dev/update ]]; then
    echo "== \e[37;1mRunning bin/dev/update\e[0m"
    bin/dev/update
  elif [[ -f .medic/config.toml ]]; then
    echo "== \e[37;1mRunning medic up\e[0m"
    medic up
  else
    echo "Neither bin/dev/doctor nor .medic/config.toml exist" >&2
    return 1
  fi
}
