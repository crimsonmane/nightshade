sudo rm /etc/apt/sources.list.d/medibuntu*
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bkup
sudo sed -i '/medibuntu/d' /etc/apt/sources.list
