######## Befor starting script #########

#Script need to start under nonroot user with sudo.
#adduser admin

######## Script ###################
#!/bin/bash
sudo apt -y install openbox obconf obmenu lxterminal nano net-tools lightdm pcmafm tint2 nitrogen gnome-background mate-background menu
mkdir ~/.config/openbox
echo -e "nitrogen --restore &\ntint2 &" > ~/.config/openbox/autostart.sh