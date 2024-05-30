function bar {
#usr=$(whoami) 
Batt=$(cat /sys/class/power_supply/BAT0/capacity &)
BTC=$(sh ~/Scripts/btc.sh &)
power=$(sh ~/Scripts/charge.sh &)
link=$(~/Scripts/wifi.sh &)
#batt=$(echo " $Batt%")
Mem=$(free -h | awk '/^Mem:/ {print $3 "/" $2}' && sleep 0.5 &)
mem=$(echo "$Mem" &)
#Temp=$(sensors | awk '/^temp1/ {print $2}')
temp=$(sensors | sed '17,18!d' | awk '{print $2}' &)
wifi=$(nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d\' -f2 | awk '{gsub("yes:", "");print}'& )
space=$(df -h | grep '/dev/sda3'  | awk '/^'/'dev {print $3 "/" $2}'& )
#Space=$( echo "$space"  )
Volume=$( pactl list sinks | grep '^[[:space:]]Volume:' | \
	    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' & ) 
time=$(date +%a_%d_%T_%y &)
	xsetroot -name  "| $BTC |💾 $space |🔊 $Volume% |  $wifi | $link |  $temp |  $mem | $power |  $Batt% |  $time"
	bar
}
bar
