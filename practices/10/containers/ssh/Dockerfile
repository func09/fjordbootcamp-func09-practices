FROM ubuntu:21.10

RUN apt-get update && apt-get install -y openssh-server

ARG USERNAME=func09
ARG PASSWORD=password

RUN useradd -m -s /bin/bash -G sudo $USERNAME && \
  echo $USERNAME:$PASSWORD | chgpasswd && \
  echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir /home/$USERNAME/.ssh
COPY ./authorized_keys /home/$USERNAME/.ssh/authorized_keys
RUN chown -R $USERNAME.$USERNAME /home/$USERNAME/.ssh && \
  chmod 600 /home/$USERNAME/.ssh/authorized_keys

RUN mkdir /var/run/sshd
COPY ./sshd_config /etc/ssh/sshd_config

EXPOSE 10022
CMD ["/usr/sbin/sshd", "-D"]
