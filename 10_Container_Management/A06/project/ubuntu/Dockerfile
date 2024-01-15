FROM docker.io/library/ubuntu:focal
RUN apt-get update && apt-get install -y systemd openssh-server python3 sudo && apt-get clean
RUN systemctl enable ssh
RUN useradd vagrant -m -G sudo -s /bin/bash && echo 'vagrant:vagrant' | chpasswd
COPY --chmod=600 vagrant /etc/sudoers.d/
COPY --chmod=700 --chown=vagrant:vagrant id_rsa.pub /home/vagrant/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/init"]