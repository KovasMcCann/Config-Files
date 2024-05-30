status=$(mullvad status | awk '{print $3}')

if [ $status == "Disconnected" ]
then
  echo VPN: 🆘
else
  echo VPN: ✅
fi
