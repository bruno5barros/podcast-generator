FROM ubuntu:latest

RUN sudo apt-get update 
RUN sudo apt-get upgrade -y
RUN apt-get install python3.10
RUN apt-get install python3-pip
RUN apt-get install git
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