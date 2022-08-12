cd walls
n=$(ls | wc -l)
dir=$(pwd)
ls > ../list.txt
cd ..
i=$(date +'%d')
name=$(python backend.py $i)
echo $name
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
	var Desktops = desktops();
	for (i=0;i<Desktops.length;i++) 
	{
       		d = Desktops[i];
       		d.wallpaperPlugin = "org.kde.image";
       		d.currentConfigGroup = Array("Wallpaper",
                                   "org.kde.image",
                                   "General");
      		d.writeConfig("Image", "file://'''$dir'''/'${name}'");
	}'
