FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

# Install Python 3.x and Pip
RUN apt-get install -y python3 python3-pip

# Install PyYAML
RUN apt-get install -y python3-pyyaml

# Install Git
RUN apt-get install -y git

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]