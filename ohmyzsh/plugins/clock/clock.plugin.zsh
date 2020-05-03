function clock() {
  watch -t -n1 'echo "$(date +%a\ %b\ %e\ %Y%n%X\ %Z)\n$(date -u +%X\ %Z)" | figlet -k -c -w$(tput cols)'
}

