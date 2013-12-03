cd /etc/apt
sudo rm sources.list.d/medibuntu*
sudo cp sources.list sources.list.bkup
sudo sed -i '/medibuntu/d' sources.list
cd ~