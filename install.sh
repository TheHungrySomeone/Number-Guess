#!/bin/bash
# Install script for Number-Guess
if [[ ! -f /usr/bin/sudo ]]; then
echo "You need to install sudo to run this script."
exit 1
fi

read -p "Warning: This install script uses sudo. You might want to read the code before running. Do you wish to continue? [Y/n]: " onward

if [[ $onward == n || $onward == N ]]; then
echo "Ok."
exit 0
fi

if [[ $onward == y || $onward == Y ]]; then
if [[ -f /usr/local/bin/number-guess ]]; then
sudo rm /usr/local/bin/number-guess
fi
sudo cp ./number-guess /usr/local/bin/
fi
