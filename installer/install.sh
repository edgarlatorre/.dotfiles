# Run installation scripts

sudo pacman -S --needed --noconfirm git base-devel less

# Install yay if it's not installed
if ! command -v yay &> /dev/null; then
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm

  cd -
  rm -rf yay
fi

for installer in ~/.dotfiles/installer/auto/*.sh; do 
  source $installer; 
done
