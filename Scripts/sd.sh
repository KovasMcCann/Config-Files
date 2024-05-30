active=$(lsblk | sed '7,7!d' | awk '{print $1}')
file=$(ls | grep sdmount)
if [ $active = "mmcblk0" ]
then 
	if [ $file = "sdmount" ]
	then 
	sudo mount /dev/mmcblk0p1 sdmount
	cd sdmount 
	sudo rm -Rf DCIM MISC
	cd ..
	sudo umount /dev/mmcblk0p1
	echo "Complete"
	echo "All data deleted!"
	else
	mkdir sdmount
	sh sd.sh
	fi	
else
echo "NO SD card !!"
echo "ERROR"
fi
