FROM dastudio/archlinuxcn

RUN pacman -Syu --noconfirm xorg xpra-winswitch x11vnc openbox zsh
COPY zshrc /home/user/.zshrc
RUN useradd -Ums /bin/zsh user \
      && chown user:user /home/user/.zshrc
USER user
CMD ["zsh"]
