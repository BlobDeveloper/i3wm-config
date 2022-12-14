#!/usr/bin/env bash 
git clone https://github.com/BlobDeveloper/i3wm
cd i3wm
cp -R .config ~/                                            
chmod -R +x ~/.config/i3/scripts
cp .nanorc ~/
cp assets/wallpaper.jpg ~/Pictures/wallpaper.png
nitrogen --set-auto ~/Pictures/wallpaper.png
dbus-launch dconf load / < ~/xed.dconf
sed -i 's|\(exec --no-startup-id ~/set_once.sh\)|# \1|' ~/.config/i3/config
cd ..
rm -rf i3wm