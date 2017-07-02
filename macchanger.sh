# macchanger-bash-script
#!/bin/bash

sudo apt install macchanger
if [[ wlan0=up ]]
then
        sudo ifconfig wlan0 down
        sudo macchanger wlan0 -r
	sudo ifconfig wlan0 up
elif [[ eth0=up ]]
then
        sudo ifconfig eth0 down
        sudo macchanger eth0 -r
        sudo ifconfig eth0 up
elif [[ wlp2s0=up ]]
then
        sudo ifconfig wlp2s0 down
        sudo macchanger wlp2s0 -r
        sudo ifconfig wlp2s0 up
fi

exit

# To make it so you never have to worry about running this script and make it spoof automaticly, run the fallowing command and listen to the instruct$

# sudo apt install wicd 

# Then you need to open it and connect to your network, once you have done that you must go to properties and click on scripts, 
# this will promped you for your adminastrater password because scripts can be very dangerus
# Then all you need to do is go to where it says pre-connection script at the very top, and give the path to this script
# Then your done! you have succesfully made your mac address spoof automaticly
# (What ever you do with this is now my responsibility and I am only meaning to teach with this script)
