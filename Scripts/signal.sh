percent=$(iwconfig wlp3s0 | grep Quality= | sed -e 's/.*Quality=//' | awk -F'/' '{print $1}')

if [ $percent 
