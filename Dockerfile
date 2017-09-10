FROM dastudio/archlinuxcn

RUN pacman -Syu --noconfirm xorg xpra-winswitch x11vnc openbox zsh
RUN useradd -Ums /bin/zsh user
USER user
CMD ["zsh"]
ADD zshrc /home/user/.zshrc
