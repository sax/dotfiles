function doc() {
  if [[ -f .config/medic.toml ]]; then
    echo "== \e[37;1mRunning medic doc\e[0m"
    medic doc
  elif [[ -f bin/dev/doctor ]]; then
    echo "== \e[37;1mRunning bin/dev/doctor\e[0m"
    bin/dev/doctor
  else
    echo "Neither bin/dev/doctor nor .config/medic.toml exist" >&2
    return 1
  fi
}

function shipit() {
  if [[ -f .config/medic.toml ]]; then
    echo "== \e[37;1mRunning medic ship\e[0m"
    medic ship
  elif [[ -f bin/dev/shipit ]]; then
    echo "== \e[37;1mRunning bin/dev/shipit\e[0m"
    bin/dev/shipit
  else
    echo "Neither bin/dev/shipit nor .config/medic.toml exist" >&2
    return 1
  fi
}

function t() {
  if [[ -f .config/medic.toml ]]; then
    echo "== \e[37;1mRunning medic test\e[0m"
    medic test
  elif [[ -f bin/dev/test ]]; then
    echo "== \e[37;1mRunning bin/dev/test\e[0m"
    bin/dev/test
  elif [[ -f bin/dev/run-tests ]]; then
    echo "== \e[37;1mRunning bin/dev/run-tests\e[0m"
    bin/dev/run-tests
  else
    echo "Neither bin/dev/{run-tests,test} nor .config/medic.toml exist" >&2
    return 1
  fi
}

function up() {
  if [[ -f .config/medic.toml ]]; then
    echo "== \e[37;1mRunning medic up\e[0m"
    medic up
  elif [[ -f bin/dev/update ]]; then
    echo "== \e[37;1mRunning bin/dev/update\e[0m"
    bin/dev/update
  else
    echo "Neither bin/dev/update nor .config/medic.toml exist" >&2
    return 1
  fi
}
