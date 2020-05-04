function clock() {
  watch -t -n1 \
    'echo "$(date +%a\ %b\ %e\ %Y%n%Z\ %X)\n$(date -u +%Z\ %X)\nLondon $(TZ=Europe/London date +%X)\nBerlin $(TZ=Europe/Berlin date +%X)\nJakarta $(TZ=Asia/Jakarta date +%X)" \
       | figlet -k -c -w$(tput cols)'
}

