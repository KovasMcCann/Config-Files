pidof transmission-daemon >/dev/null || (transmission-daemon && notify-send "Starting transmission daemon..." && sleep 3 && pkill -RTMIN+7 "${STATUSBAR:-dwmblocks}")

stig add "$@" && notify-send "🔽 Torrent added."
