#!/bin/bash
# Install script for Number-Guess
# Makes sure sudo is installed, and gives an error message and exits if not.
if [[ ! -f /usr/bin/sudo ]]; then
echo "You need to install sudo to run this script."
exit 1
fi

# Warning that this uses sudo and that they might want to read the source code before running
read -p "Warning: This install script uses sudo. You might want to read the code before running. Do you wish to continue? [Y/n]: " onward

if [[ $onward == n || $onward == N ]]; then
echo "Ok."
exit 0
fi

if [[ $onward == y || $onward == Y ]]; then
# This allows the user to update using the install script
if [[ -f /usr/local/bin/number-guess ]]; then
sudo rm /usr/local/bin/number-guess
fi
# Puts the number-guess file into /usr/local/bin
sudo cp ./number-guess /usr/local/bin/
fi
