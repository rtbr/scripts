######## Befor starting script #########

#Script need to start under nonroot user with sudo.
#adduser admin

######## Script ###################
#!/bin/bash
apt -y install sudo openbox obconf obmenu lxterminal nano net-tools lightdm pcmanfm tint2 nitrogen menu mousepad xxkb
mkdir -p ~/.config/openbox
echo -e "XXkb.mainwindow.type: tray\nXXkb.group.base: 1\nXXkb.group.alt: 2\nXXkb.mainwindow.enable: yes\nXXkb.mainwindow.appicon: yes\nXXkb.mainwindow.geometry: 22x22+0+0\nXXkb.button.enable: no\nXXkb.app_list.wm_class_name.start_alt: Pidgin\nXXkb.controls.add_when_start: yes\nXXkb.controls.add_when_create: yes\nXXkb.controls.add_when_change: yes\nXXkb.controls.focusout: no\nXXkb.mainwindow.label.background: black\nXXkb.mainwindow.label.foreground: white\nXXkb.mainwindow.label.font: -misc-*-r-*-14-*\nXXkb.mainwindow.label.text.1: En\nXXkb.mainwindow.label.text.2: Ru\nXXkb.mainwindow.label.enable: yes" > ~/.xxkbrc
echo -e "nitrogen --restore &\ntint2 &\nxxkb &\nsetxkbmap -layout "us,ru" -option "grp:ctrl_shift_toggle,lv3:switch,terminate:ctrl_alt_bksp,grp_led:scroll" &" > ~/.config/openbox/autostart.sh