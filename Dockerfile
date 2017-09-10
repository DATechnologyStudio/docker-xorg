FROM dastudio/archlinuxcn

RUN pacman -Syu --noconfirm xorg xpra-winswitch x11vnc openbox zsh
RUN usermod -s /bin/zsh root
CMD ["zsh"]
ADD zshrc /root/.zshrc
