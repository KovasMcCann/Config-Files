i=0
while [ $i -le 4 ]
do
   if [ $i -eq 0 ]
   then 
    notify-send 'Screen Shot' "Taking Screen Shot in 5"
    sleep 1
   fi
   if [ $i -eq 1 ]
   then 
    notify-send 'Screen Shot' "Taking Screen Shot in 4"
    sleep 1
   fi
   if [ $i -eq 2 ]
   then 
    notify-send 'Screen Shot' "Taking Screen Shot in 3"
    sleep 1
   fi
   if [ $i -eq 3 ]
   then 
    notify-send 'Screen Shot' "Taking Screen Shot in 2"
    sleep 1
   fi
   if [ $i -eq 4 ]
   then 
    notify-send 'Screen Shot' "Taking Screen Shot in 1"
    sleep 1
    dunstctl close-all
    sleep 1
   fi
   ((i++))
done
scrot 
notify-send 'Taken ' "ScreenShot has been Taken"
