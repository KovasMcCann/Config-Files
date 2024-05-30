#!/bin/sh

API="https://api.kraken.com/0/public/Ticker"

quote=$(curl -sf $API?pair=BTCUSD | jq -r ".result.XXBTZUSD.c[0]")
quote=$(LANG=C printf "%.2f" "$quote")

#echo "$quote"

cache=$(< ~/Scripts/btc.txt)

#echo "$cache"

printf '%s' "$quote" > ~/Scripts/btc.txt 

if [ $quote = $cache ]
then 

echo "💰  $quote"

elif [ $(echo "$quote > $cache") '']
then

echo "💰  $quote"

else

echo "💰  $quote"

fi 


