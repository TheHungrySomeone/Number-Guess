# Number-Guess Game
This is a very simple number guessing game writen in bash.  it asks for a nickname, asks you to guess a number, tells you if you're number is too high or to low, and tells you if you won.
## Dependencies
* Bash

## How to install
cd into the `Number-Guess` directory, then copy `number-guess` into a directory in your $PATH such as /usr/local/bin or /usr/bin, then you can run this by running the command `number-guess`.

## Install on an ssh server
1. Follow the directions above
2. Follow any online directions on setting up an ssh server on linux.  Be sure to leave the port as 22.
3. Make a user named "number" using `sudo adduser number` and if you want anyone to be able to access your game, use space as your password.
4. su into  the user "number" (`su number`)
5. Add the follwing to the end of .bashrc:\
`number-guess`\
`exit`

To ssh into the game run the command:\
`ssh number@hostname`

but replace "hostname" with your computer's ip address (found with `hostname -I`).
## Log the Nicknames People Enter
If you want the game to automatically log the nicknames people enter, create an empty file named `names.txt` in /home/number, then uncomment the line that says ` echo $n >> /home/number/names.txt`
## Play without installing
If you don't want to install number guess but still want to play, cd into the `Number-Guess` directory, then run `./number-guess`.
## Done
This was how to install the game, how to run it through ssh, how to log names people enter, and how to play number-guess without installing it. Feel free to send patches and ideas for improvements. Hope you have fun playing my game!
