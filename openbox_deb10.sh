######## Befor starting script #########

#Script need to start under nonroot user with sudo.
#adduser admin

######## Script ###################
#!/bin/bash
sudo apt -y install openbox obconf obmenu lxterminal nano net-tools lightdm pcmafm tint2 nitrogen gnome-background mate-background menu mousepad fbxkb
mkdir ~/.config/openbox
echo -e "nitrogen --restore &\ntint2 &\nfbxkb &\nsetxkbmap -layout "us,ru" -option "grp:ctrl_shift_toggle,lv3:switch,terminate:ctrl_alt_bksp,grp_led:scroll" &" > ~/.config/openbox/autostart.sh