FROM ubuntu:latest

RUN apt update && sudo apt upgrade -y
RUN apt install python3.10
RUN apt install python3-pip
RUN apt install git
#     python3.10 \
#     python3-pip \
#     git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

WORKDIR /
RUN chmod -R 775 entrypoint.sh
RUN ls -l
RUN pwd

ENTRYPOINT ["/entrypoint.sh"]