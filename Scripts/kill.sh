choices="firefox\ntor-browser\nnewsboat"
chosen=$(echo -e "$choices" | dmenu -i)
case $chosen in
  firefox) sudo killall firefox && notify-send 'Kill' 'Killed All Firefox' --icon=dialog-information ;; 
  tor-browser) sudo killall tor-browser && notify-send 'Kill' 'Killed All Tor' --icon=dialog-information ;;
  newsboat) sudo killall newsboat && notify-send 'Kill' 'Killed All Newsboat' --icon=dialog-information ;;
esac

