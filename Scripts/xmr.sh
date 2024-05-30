monero=$(curl -sf "https://api.coincap.io/v2/assets/monero" |  sed -e 's/.*priceUsd":"//' -e 's/",.*//' |  awk -F'.' '{print $1}')

cache=$(< ~/Scripts/xmr.txt)

#echo "$cache"

printf '%s' "$monero" > ~/Scripts/xmr.txt

if [ $monero = $cache ]
then

  echo "💀 $monero"

elif [ $(echo "$monero > $cache") '']
then

  echo "💀 $monero"

else

  echo "💀 $monero"

fi


