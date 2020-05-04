#!/data/data/com.termux/files/usr/bin/bash
COUNT=50
BUSYBOX=/sbin/.magisk/busybox/
Logcleaner () {
echo "\e[1m\e[94m========================\e[0m\e[0m"
echo "\e[1m\e[94mTCA Log Cleaner\e[0m\e[0m"
echo "\e[1m\e[94m========================\e[0m\e[0m"
sleep 3;
rm -rf /data/data/com.tencent.ig/app_appcache
rm -rf /data/data/com.tencent.ig/app_bugly
rm -rf /data/data/com.tencent.ig/app_crashrecord
rm -rf /data/data/com.tencent.ig/app_databases
rm -rf /data/data/com.tencent.ig/app_geolocation
rm -rf /data/data/com.tencent.ig/app_tbs
rm -rf /data/data/com.tencent.ig/app_textures
rm -rf /data/data/com.tencent.ig/app_webview
rm -rf /data/data/com.tencent.ig/app_webview_imsdk_inner_webview
rm -rf /data/data/com.tencent.ig/cache
rm -rf /data/data/com.tencent.ig/code_cache
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/tencent
rm -rf /storage/emulated/0/Tencent
rm -rf /storage/emulated/0/.backups
echo "\e[1m\e[93mLogs and Trash cleared\e[0m\e[0m"
}

figlet TCA | lolcat
echo "TCA - Automation v2.0" | lolcat
echo "Brought to you with ❤ from:\n" | lolcat
echo "@sagarshah1729, @Official_Punisherr and @TheIllusionist_TCA" | lolcat

screenfetch | lolcat

sleep 3;
if [ -e /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/game_patch_0.17.0.11808.pak ]
then tsu -c rm /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/game_patch_0.17.0.11808.pak
fi

tsu -c mkdir /storage/emulated/0/TCA/
tsudo wget https://raw.githubusercontent.com/TeamTCA/TCA-Automation/master/mod  -O /storage/emulated/0/TCA/mod
tsu -c cp /storage/emulated/0/TCA/mod /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/game_patch_0.17.0.11808.pak
tsu -c cp /data/data/com.tencent.ig/lib/libcubehawk.so /storage/emulated/0/TCA/

echo "Starting game!"
sleep 2;
am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity
sleep 4;
tsu -c rm -rf /data/data/com.tencent.ig/app_crashrecord
tsu -c touch /data/data/com.tencent.ig/app_crashrecord

$BUSYBOX/chattr +i /data/data/com.tencent.ig/files/tss_tmp
tsu -c rm -rf /data/data/com.tencent.ig/files/* &>/dev/null
$BUSYBOX/chattr -i /data/data/com.tencent.ig/files/tss_tmp
tsu -c iptables -I INPUT -s receiver.sg.tdm.qq.com -j DROP &>/dev/null
tsu -c iptables -I INPUT -s hk.clientreport.gfm.qq.com -j DROP &>/dev/null
tsu -c rm -rf /data/data/com.tencent.ig/lib/libcubehawk.so
tsu -c dd if=/dev/urandom of=/data/data/com.tencent.ig/lib/libcubehawk.so bs=2400 count=7075  &> /dev/null
tsu -c chmod -R 2777 /data/data/com.tencent.ig/*
tsu -c chmod 2755 /data/data/com.tencent.ig/lib/*

echo "DONE"
sleep 30;
PACKAGE='com.tencent.ig'
while [ $(pidof $PACKAGE) ]
do
Logcleaner
((COUNT=$COUNT+10))
if [ ! $(pidof $PACKAGE) ]; then
break
fi
sleep 10
done
((final=$COUNT/60))
echo "Time played: $final Minutes"
sleep 10;

tsu -c rm /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/game_patch_0.17.0.11808.pak
tsu -c rm -rf /data/data/com.tencent.ig/lib/libcubehawk.so
tsu -c cp /storage/emulated/0/TCA/libcubehawk.so /data/data/com.tencent.ig/lib/libcubehawk.so
tsu -c rm -rf /storage/emulated/0/TCA/
tsu -c chmod -R 700 /data/data/com.tencent.ig/*
tsu -c chmod 755 /data/data/com.tencent.ig/lib/*

echo ""
printf "\n\n";
printf "System detected that the game is dead \n";
sleep 1
printf "\nSetting files & Permission to default!";
sleep 1
printf "\n\n";
sleep 2
toilet "THANKS FOR CHOOSING US" -f term -F border --gay | pv -qL 80
