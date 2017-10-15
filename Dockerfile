FROM dastudio/archlinuxcn

RUN pacman -Syu --noconfirm xorg xpra-winswitch x11vnc openbox zsh
RUN useradd -Ums /bin/zsh user \
      && chown user:user /home/user/ -R
USER user
COPY zshrc /home/user/.zshrc
EXPOSE 5900
CMD ["zsh"]
