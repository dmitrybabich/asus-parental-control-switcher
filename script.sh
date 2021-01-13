# wget -O - https://raw.githubusercontent.com/dmitrybabich/asus-parental-control-switcher/master/script.sh | bash
# sudo su -c "bash <(wget -qO- https://raw.githubusercontent.com/dmitrybabich/asus-parental-control-switcher/master/script.sh)" root

# rm script.sh && wget https://raw.githubusercontent.com/dmitrybabich/asus-parental-control-switcher/master/script.sh && chmod +x script.sh
ENABLED=`nvram get MULTIFILTER_ENABLE`
echo $ENABLED
if [ $ENABLED = "2" ]; then
    echo "Disabling Parental Control"
    nvram set MULTIFILTER_URL_ENABLE=""
    nvram set MULTIFILTER_ALL="0"
    nvram set MULTIFILTER_MACFILTER_DAYTIME=""
    nvram set MULTIFILTER_TMP=""
    nvram set MULTIFILTER_DEVICENAME=""
    nvram set MULTIFILTER_ENABLE=""
    nvram set MULTIFILTER_URL=""
    nvram set MULTIFILTER_MAC=""
else
    echo "Enabling Parental Control"
    nvram set MULTIFILTER_URL_ENABLE=""
    nvram set MULTIFILTER_ALL="1"
    nvram set MULTIFILTER_MACFILTER_DAYTIME="<"
    nvram set MULTIFILTER_TMP=""
    nvram set MULTIFILTER_DEVICENAME="XBOX"
    nvram set MULTIFILTER_ENABLE="2"
    nvram set MULTIFILTER_MAC="30:AB:6A:7A:35:83"
    nvram set MULTIFILTER_URL=""
fi
echo "Applying changes"

nvram commit