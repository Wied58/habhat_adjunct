sudo apt update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt clean

cp -r /boot/Tools /home/pi/Tools


sudo sh -c "echo 'force_turbo=1' >> /boot/config.txt"
sudo sh -c "echo 'enable_uart=1' >> /boot/config.txt"
sudo sh -c "echo 'pi3-disable-bt' >> /boot/config.txt"
sudo sh -c "echo 'dtparam=i2c_arm=on' >> /boot/config.txt"
sudo sh -c "echo 'dtparam=i2c1=on' >> /boot/config.txt"
sudo sh -c "echo 'i2c_arm_baudrate=400000' >> /boot/config.txt"
# enable second i2c port #3
sudo sh -c "echo 'dtoverlay=i2c-gpio,bus=3,i2c_gpio_delay_us=1,i2c_gpio_sda=17,i2c_gpio_scl=27' >> /boot/config.txt"
# enable third i2c port #4
# sudo sh -c "echo 'dtoverlay=i2c-gpio,bus=4,i2c_gpio_delay_us=1,i2c_gpio_sda=23,i2c_gpio_scl=24' >> /boot/config.txt"
# raspi-config to enable i2c
sudo raspi-config nonint do_i2c 0
# Setup serial port
sudo systemctl disable hciuart
# Disable IPv6
sudo sed -i 's/$/ ipv6.disable=1/' /boot/cmdline.txt
# Enable I2C Bus
sudo sh -c "echo 'i2c-bcm2708' >> /etc/modules"
sudo sh -c "echo 'i2c-dev' >> /etc/modules"

