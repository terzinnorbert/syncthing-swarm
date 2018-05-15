FROM ubuntu:latest

MAINTAINER Terzin Norbert <terzin.norbert@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y software-properties-common curl unzip && \
    curl -s https://syncthing.net/release-key.txt | apt-key add - && \
    echo "deb https://apt.syncthing.net/ syncthing stable" | tee /etc/apt/sources.list.d/syncthing.list && \
    apt-get update && apt-get install -y syncthing

WORKDIR /root
EXPOSE 8384

CMD ["syncthing"]
