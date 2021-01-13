ENABLED=`nvram get MULTIFILTER_ENABLE`
echo $ENABLED
if [ $ENABLED = "2" ]; then
    echo "Disabling"
    nvram set MULTIFILTER_ALL="1"
    nvram set MULTIFILTER_MACFILTER_DAYTIME="<"
    nvram set MULTIFILTER_DEVICENAME=""
    nvram set MULTIFILTER_ENABLE=""
    nvram set MULTIFILTER_MAC=""
else
    echo "Enabling"
    nvram set MULTIFILTER_ALL="1"
    nvram set MULTIFILTER_MACFILTER_DAYTIME="<"
    nvram set MULTIFILTER_DEVICENAME="XBOX"
    nvram set MULTIFILTER_ENABLE="2"
    nvram set MULTIFILTER_MAC="36:81:78:19:42:0E"
fi
echo "Applying changes"

nvram commit