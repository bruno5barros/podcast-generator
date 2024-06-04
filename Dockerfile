FROM python:3.10-alpine

#     python3.10 \
#     python3-pip \
# RUN sudo apt-get install git
RUN apk update
RUN apk upgrade
RUN apk search git
RUN apk add git

RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN python --version
RUN python3 --version

WORKDIR /
RUN chmod -R 777 /usr/bin/entrypoint.sh
RUN chmod -R 777 /usr/bin/
RUN ls -l
RUN pwd

ENTRYPOINT ["/usr/bin/entrypoint.sh"]