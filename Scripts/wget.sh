while true; do
link=$(xclip -out)
check=$(echo $link | grep '.jpg\|.png\|.gif\|.jpeg\|.pdf\|.mp4' || echo "Fail")
if [ $check != "Fail" ]
then 
  choices="Yes\nNo"
  chosen=$(echo -e "$choices" | dmenu -i)
  case $chosen in
    Yes) wget $link && notify-send 'WGET ~> Image' "Downloaded" ;;
    No) notify-send 'wipe' "30 seconds till wipe";;
  esac 
  cat /dev/null|xclip -i

fi
done
