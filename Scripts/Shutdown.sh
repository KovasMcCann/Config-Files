choices="Shutdown\nLogout\nReboot\nCancel"
chosen=$(echo -e "$choices" | dmenu -i)
case $chosen in
  Shutdown) "shutdown" ;; 
  Logout) "Logout" ;;
  Reboot) "reboot" ;;
  Cancel) ;;
esac

