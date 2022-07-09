FROM ubuntu:22.04
RUN apt-get update -y && apt-get upgrade -y && apt-get update -y && apt-get install openssh-client iputils-* net-tools -y
