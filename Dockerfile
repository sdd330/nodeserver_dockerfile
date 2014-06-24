FROM ubuntu
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN service ssh start
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN echo "root:ubnode" | chpasswd
EXPOSE 22
EXPOSE 80
