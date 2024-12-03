#!/usr/bin/env bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR"/colors.sh

echo -e "${RED}"
cat <<"EOF"
     _       _   ____                        _   _     
  __| | ___ | |_/ ___| _ __ ___   ___   ___ | |_| |__  
 / _` |/ _ \| __\___ \| '_ ` _ \ / _ \ / _ \| __| '_ \ 
| (_| | (_) | |_ ___) | | | | | | (_) | (_) | |_| | | |
 \__,_|\___/ \__|____/|_| |_| |_|\___/ \___/ \__|_| |_|

EOF
echo -e "${RESET}"

 if pacman -Qi paru &> /dev/null; then
  PYELL paru is installed
else
   PRED paru is not installed
   sleep 1
   PMAG beginning installation of paru...
   bash "$SCRIPT_DIR"/chaotic.sh
   sudo pacman -S --noconfirm --needed paru yay wget aria2
   PDONE
fi

source "$SCRIPT_DIR"/chaotic.sh
source "$SCRIPT_DIR"/twms.sh
source "$SCRIPT_DIR"/sddm.sh
source "$SCRIPT_DIR"/themeing.sh
source "$SCRIPT_DIR"/user-apps.sh
source "$SCRIPT_DIR"/utilities.sh
source "$SCRIPT_DIR"/dots.sh

