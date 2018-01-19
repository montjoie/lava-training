FROM debian:9

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3-jinja2 python3

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git

RUN git clone https://git.automotivelinux.org/AGL/releng-scripts

ENTRYPOINT /bin/sleep 365d
