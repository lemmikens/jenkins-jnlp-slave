FROM jenkins/jnlp-slave
#run as root
USER root
RUN apt-get update
RUN apt-get install sudo

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
switch to docker for safety
USER docker

RUN sudo apt-get update 
