#mental outlaw	
cd ~/Media/Videos/Youtube/MentalOutlaw && youtube-dl -4 https://www.youtube.com/channel/UC7YOGHUfC1Tb6E4pudI9STA &	
#lukesmith
cd ~/Media/Videos/Youtube/LukeSmith && youtube-dl -4 https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA &
#shiey
cd ~/Media/Videos/Youtube/Shiey && youtube-dl -4  https://www.youtube.com/channel/UCpXwMqnXfJzazKS5fJ8nrVw & 

#darknet daireares

cd ~/Media/Podcasts/Darknet

darknet_diaries_feed_parsed=$(curl -s https://feeds.megaphone.fm/darknetdiaries | grep -E '<title>|enclosure'); while read -r title; do read -r enclosure; export title; export enclosure; name=$(echo "$title" | sed 's/  / /g' | sed 's/[#!,()]//g' | sed -E 's/<.{5,6}>//g' | sed 's/[: ]/_/g')".mp3"; url=$(echo "$enclosure" | grep -oE "h.*p3"); if [[ "${name:0:1}" == "P" ]]; then name="Ep_65_2__$name"; fi; if [[ "${name:0:2}" != "Ep" ]]; then name="Ep_$name"; fi; name="Darknet_Diaries_$name"; echo "Downloading ... $name .. $url"; curl -Lo "$name" "$url" ; done <<< "$(echo "$darknet_diaries_feed_parsed" | sed '1,2d')"; 

#Getting in to infosec

cd ~/Media/Podcasts/Getting_into && youtube-dl -4 -x https://www.youtube.com/c/GettingIntoInfosec/videos &

cd ~/Media/Podcasts/a16z && youtube-dl -4 -x https://www.youtube.com/channel/UC9cn0TuPq4dnbTY-CBsm8XA &

cd ~/Media/Podcasts/Cyber_Wire && youtube-dl -4 -x https://www.youtube.com/channel/UCIC1L2vbbyotqEF0ZLhaOdw &
