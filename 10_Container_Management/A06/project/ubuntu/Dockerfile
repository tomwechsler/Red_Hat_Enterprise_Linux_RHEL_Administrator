FROM docker.io/library/ubuntu:focal
RUN apt-get update && apt-get install -y systemd openssh-server python3 sudo && apt-get clean
RUN systemctl enable ssh
RUN useradd tux -m -G sudo -s /bin/bash && echo 'tux:[Password1]' | chpasswd
COPY --chmod=600 tux /etc/sudoers.d/
COPY --chmod=700 --chown=tux:tux id_rsa.pub /home/tux/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/init"]