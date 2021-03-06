FROM ubuntu:22.04
RUN apt-get update -y && apt-get upgrade -y && apt-get update -y && apt-get install sudo nano openssh-server -y
RUN useradd -d /home/alice -m -s /bin/bash  alice && echo -n 'alice:1234' | chpasswd && usermod -aG sudo alice
COPY ./start_sshd.sh /opt/
RUN chmod +x /opt/start_sshd.sh
ENTRYPOINT ["/opt/start_sshd.sh"]
