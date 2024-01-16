#Working on the rhel system

#Change the current directory to 'project/fedora'
cd project/fedora

#List the content
ls

#Create the Dockerfile
vim Dockerfile

FROM docker.io/library/fedora:38
RUN dnf install -y systemd openssh-server openssh-clients python3 vim ansible sshpass && dnf clean all
RUN systemctl enable sshd
RUN useradd vagrant -m -G wheel -s /bin/bash && echo 'vagrant:vagrant' | chpasswd
COPY --chmod=600 vagrant /etc/sudoers.d/
COPY --chmod=700 --chown=vagrant:vagrant id_rsa.pub /home/vagrant/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/init"]

#Save and exit the file

#List the contents of the current directory with their details
ls -l

#Build an image from the Dockerfile in the current directory and tag it as 'localhost/fedora'
podman image build -t localhost/fedora .

#List all images
podman image ls