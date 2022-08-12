#!/usr/bin/bash
i=$(date +'%d')
while true; 
do
	n=$(expr $i % 3)
	if [ $n = "0" ]
	then
		dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
		var Desktops = desktops();
		for (i=0;i<Desktops.length;i++) 
		{
        		d = Desktops[i];
        		d.wallpaperPlugin = "org.kde.image";
        		d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
      			d.writeConfig("Image", "/home/priyanshus/Pictures/1126196.jpg");
		}'
		break
	fi
	if [ $n = "1" ]
	then
		dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
		var Desktops = desktops();
		for (i=0;i<Desktops.length;i++) 
		{
        		d = Desktops[i];
        		d.wallpaperPlugin = "org.kde.image";
        		d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
      			d.writeConfig("Image", "/home/priyanshus/Pictures/1138711.jpg");
		}'
		break
	fi
	if [ $n = "2" ]
	then
		dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
		var Desktops = desktops();
		for (i=0;i<Desktops.length;i++) 
		{
        		d = Desktops[i];
        		d.wallpaperPlugin = "org.kde.image";
        		d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
      			d.writeConfig("Image", "/home/priyanshus/Pictures/1146918");
		}'
		break
	fi
	
done
