FROM python:3.10-alpine

#     python3.10 \
#     python3-pip \
RUN sudo apt-get install git

RUN pip install PyYAML

COPY entrypoint.sh /entrypoint.sh
COPY feed.py /usr/bin/feed.py
RUN python --version
RUN python3 --version

WORKDIR /
RUN chmod -R 777 entrypoint.sh
RUN ls -l
RUN pwd

ENTRYPOINT ["/entrypoint.sh"]