power=$(cat /sys/class/power_supply/BAT0/status)

if [ $power = "Charging" ]
then 

echo "🔌"

elif [ $power = "Unknown" ]
then

echo ""

else 

echo "🔋"

fi
