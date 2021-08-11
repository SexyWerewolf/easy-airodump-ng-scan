########### Copyright Dachi Wolf ###########
########### A Easy Way To Use Airmon-ng ###########
########### Instart The Tools For First Time! ###########
########### This Tool It's ONLY For Personal Tests ###########



########## Creator ###########
clear
figlet "By Dachi Wolf" | lolcat
sleep 2


########### Firs Scypt ###########
clear
sleep 1
########### Asks If You Want To Put A Device In Monitor Mode ###########
echo "Do You Want To Start The Monitor Mode? Y/N"
read monmod
if [ $monmod == "y" ] || [ $monmod == "Y" ] || [ $monmod == "yes" ] || [ $monmod == "Yes" ] || [ $monmod == "YES" ]
  then
  clear
########### Print The Device That It Is NOT In Monitor Mode ###########
  echo "This Devices Are NOT In Monitor Mode So.. Type A Device Name To Set It In Monitor Mode!"
  echo ""
  echo ""
  ip route | grep default | sed -e "s/^.*dev.//" -e "s/.proto.*//"
  echo ""
  echo ""
########### This Scrypt Start The Monitor Mode On The Device ###########
  read DeviceForMonitor
  echo "Starting The Monitor Mode.."
  sudo airmon-ng start $DeviceForMonitor
  echo ""
  echo "DONE!"
  echo ""
  clear
########### Print The Devices Names Again ###########
  echo "Check The New Device Name And Keep It!"
  echo ""
  find /sys/class/net ! -type d | xargs --max-args=1 realpath  | awk -F\/ '/pci/{print $NF}'
  echo ""
########### Asks For The New Device Name ###########
  echo "Type Here The New Device Name"
  echo ""
  read ndn
  sleep 1
  clear
########### Asks For What Band You Want To Use ########### 
  echo "Select Band For Scan: 1= 2.4G / 2= 5G / 3= 2.4G + 5G"
  echo ""
########### This Scrypt Start The WiFI Scan In The Correct Band ( bg = 2.4G / a = 5G / abg = 2.4G + 5G ) ###########
  read BandScan
  if (( $BandScan == 1 ))
     then
     echo "Starting Scan 2.4G"
     sleep 1
     sudo airodump-ng --band bg --update 1 -f 10 --uptime --manufacturer $ndn
     fi
  if (( $BandScan == 2 ))
     then
     echo "Starting Scan 5G"
     sudo airodump-ng --band a --update 1 -f 10 --uptime --manufacturer $ndn
     fi
  if (( $BandScan == 3 ))
     then
     echo "Starting Scan 2.4G + 5G"
     sudo airodump-ng --band abg --update 1 -f 10 --uptime --manufacturer $ndn
     fi
else
  clear
########### Print The WiFi Diveces ###########
  echo "This Is Your Devices"
  echo ""
  find /sys/class/net ! -type d | xargs --max-args=1 realpath  | awk -F\/ '/pci/{print $NF}'
  echo ""
########### Asks For A Divice Name To Use It For The Scan ###########
  echo "Type Here A Device To Use It For Scan (The Divice Need To Be In Monitor Mode To Work)"
  echo ""
  read ndn
  sleep 1
  clear
########### Asks For What Band You Want To Use ########### 
  echo "Select Band For Scan: 1= 2.4G / 2= 5G / 3= 2.4G + 5G"
  echo ""
########### This Scrypt Start The WiFI Scan In The Correct Band ( bg = 2.4G / a = 5G / abg = 2.4G + 5G ) ###########
  read BandScan
  if (( $BandScan == 1 ))
     then
     echo "Starting Scan 2.4G"
     sleep 1
     sudo airodump-ng --band bg --update 1 -f 10 --uptime --manufacturer $ndn
     fi
  if (( $BandScan == 2 ))
     then
     echo "Starting Scan 5G"
     sudo airodump-ng --band a --update 1 -f 10 --uptime --manufacturer $ndn
     fi
  if (( $BandScan == 3 ))
     then
     echo "Starting Scan 2.4G + 5G"
     sudo airodump-ng --band abg --update 1 -f 10 --uptime --manufacturer $ndn
     fi
fi

########### END OF THE SCRYPT! ###########
