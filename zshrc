if [[ -z $DISPLAY ]]
then
  xpra start :0
  while ! grep 'xpra is ready' /home/user/.xpra/:0.log >/dev/null 2>&1
  do
    sleep 1
  done
  export DISPLAY=:0
  openbox --replace &
  mkdir ~/.vnc
  x11vnc -storepasswd $VNCPASS ~/.vnc/passwd
  x11vnc -forever -rfbauth ~/.vnc/passwd -bg
  xrandr -s 1920x1080
fi
