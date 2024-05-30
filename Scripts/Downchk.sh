SSID=$(nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d\' -f2 | awk '{gsub("yes:", "");print}')

if [ $SSID == "MCCANN-2.4" ]
then 

kill ./Downchk.sh 2> /dev/null

else

sh ~/Scripts/youtube-dl.sh

fi 
