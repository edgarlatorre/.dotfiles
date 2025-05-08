yay -S --needed --noconfirm blueman bluez bluez-utils iwd wireless_tools wpa_supplicant dialog networkmanager network-manager-applet

if ! systemctl is-active --quiet bluetooth; then
  sudo systemctl enable bluetooth.service
  sudo systemctl start bluetooth.service
fi

sudo systemctl enable --now iwd
sudo systemctl enable --now wpa_supplicant
sudo systemctl enable --now NetworkManager


