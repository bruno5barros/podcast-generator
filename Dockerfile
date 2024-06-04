FROM ubuntu:latest

RUN apt-get update

# Install Python 3.x and Pip
RUN apt-get install -y python3 python3-pip

# Install PyYAML
RUN pip3 install pyyaml

# Install Git
RUN apt-get install -y git

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]