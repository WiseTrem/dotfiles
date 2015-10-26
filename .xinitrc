#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (запустите ваш оконный менеджер отсюда)
#
exec /home/wisetrem/Yandex.Disk/Scripts/no_offscreen.sh &
eval "$(/usr/bin/ssh-agent -s)"

while true
do
  KE=`xset -q|grep LED| awk '{ print $10 }'`
  if [ "$KE" == "00000002" -o "$KE" == "00000000" ]; then
    LANG="EN"
  else
    LANG="RU"
  fi 
  LOCALTIME=$(date +%H:%M\ %a/%d/%m\ %Y\ %Z)
  xsetroot -name "$LOCALTIME [$LANG]"
  sleep 0.5
done &

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

#Чтобы не конфликтовали консольный/X/UTF и не UTF шрифты, иначе беда
#sudo rm -f /usr/share/fonts/terminus/ter-114* 

conky |/bin/sh |dzen2 -ta r -p -h 20 -y 1062 -e 'button3=;' -fn '-*-terminus-medium-r-normal-*-16-*-*-*-*-*-iso10646-*' &
#(st -t "WeeChat" -e screen weechat-curses) &
(sudo /opt/teamviewer10/tv_bin/teamviewerd -- -d) &
(yandex-disk start) &
exec hexchat &
exec skype &
exec telegram &
exec steam &
exec google-chrome-stable &
exec teamviewer10 &
exec keepassx &
exec parcellite &

exec dwm 
