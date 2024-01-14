FROM docker.io/library/fedora:38
RUN dnf install -y systemd openssh-server openssh-clients python3 vim ansible sshpass && dnf clean all
RUN systemctl enable sshd
RUN useradd tux -m -G wheel -s /bin/bash && echo 'tux:[Password1]' | chpasswd
COPY --chmod=600 tux /etc/sudoers.d/
COPY --chmod=700 --chown=tux:tux id_rsa.pub /home/tux/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/init"]