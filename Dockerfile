FROM ubuntu:latest

RUN apt-get update
RUN apt-get python3.10
RUN apt-get python3-pip
RUN apt-get git
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