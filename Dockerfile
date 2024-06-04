FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

# Install Python 3.x and Pip
RUN apt-get install -y python3.10 python3-pip

# Install PyYAML
RUN python3 --version
RUN pip --version
RUN pip3 --version
RUN pip3 install PyYAML

# Install Git
RUN apt-get install -y git

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]