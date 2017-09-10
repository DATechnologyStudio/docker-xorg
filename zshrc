if [[ -z $DISPLAY ]]
then
  xpra start :0
  while ! cat /home/user/.xpra/:0.log | grep 'xpra is ready' >/dev/null 2>&1 ; do : ; done
  export DISPLAY=:0
  openbox --replace &
  mkdir ~/.vnc
  x11vnc -storepasswd $VNCPASS ~/.vnc/passwd
  x11vnc -forever -rfbauth ~/.vnc/passwd -bg
  xrandr -s 1920x1080
fi
