sudo apt -y install build-essential wiringpi gpsd gpsd-clients i2c-tools screen inotify-tools

sudo apt -y install python3-dev python3-pip python3-numpy python3-smbus
sudo pip3 install RPi.GPIO pyserial fraction easydict gps mpu9250-jmdev smbus2

sudo apt -y install python3-dev python3-pip python3-numpy python3-smbus
sudo pip3 install RPi.GPIO pyserial fraction easydict gps mpu9250-jmdev smbus2

sudo cp /home/pi/Tools/GPSdConfig/gpsd /etc/default/gpsd
sudo cp /home/pi/Tools/GPSdConfig/gpsd /etc/default/gpsd


sudo cp /home/pi/Tools/Autostart/rc.local /etc/rc.local


