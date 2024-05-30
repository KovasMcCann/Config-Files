pape=$(cd ~/Storage/Wallpapers && ls | shuf -n 1) 
xwallpaper --stretch ~/Storage/Wallpapers/$pape
echo ~/Storage/Wallpapers/$pape > ~/Scripts/Wallpaper.txt
