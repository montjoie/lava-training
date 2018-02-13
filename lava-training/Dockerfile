FROM debian:9

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3-jinja2 python3
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-jinja2 python

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-pip
RUN pip install --upgrade jinja2

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install iputils-ping vim nano emacs

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git
RUN git clone https://git.automotivelinux.org/AGL/releng-scripts -b release

COPY lab-baylibre-lavabox.cfg releng-scripts/templates/callback/

COPY entrypoint.sh /
RUN chmod 750 /entrypoint.sh

ENTRYPOINT /entrypoint.sh
