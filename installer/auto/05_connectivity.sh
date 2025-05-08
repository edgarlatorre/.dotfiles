yay -S --needed --noconfirm blueman bluez bluez-utils iwd wireless_tools wpa_supplicant dialog networkmanager network-manager-applet

if ! systemctl is-active --quiet bluetooth; then
  sudo systemctl enable bluetooth.service
  sudo systemctl start bluetooth.service
fi
