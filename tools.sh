# By Dachi Wolf

echo "Make Sure You Have Accsess On The Internet"
echo "You Need To Download 3 Tools Starting..."
time 4
clear
echo "Starting With The Update.."
sleep 2
sudo apt-get update
clear
echo "Install lolcat.."
sleep 2
sudo apt-get install -y lolcat
clear
echo "Install figlet"
sleep 2
sudo apt-get install -y figlet
clear
echo "Install aircrack-ng"
sleep 2
sudo apt-get install -y aircrack-ng
clear
echo ""
echo ""
echo ""
figlet "DONE!" | lolcat
echo ""
echo ""
echo ""
sleep 3
exit
