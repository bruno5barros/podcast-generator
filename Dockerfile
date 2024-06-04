FROM python:3.10-alpine

#     python3.10 \
#     python3-pip \
# RUN sudo apt-get install git
RUN apk update
RUN apk upgrade
RUN apk search git
RUN apk add git

RUN pip install PyYAML

RUN mkdir /entrypoint

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint/entrypoint.sh
RUN python --version
RUN python3 --version

WORKDIR /entrypoint/
RUN chmod -R 777 /entrypoint/entrypoint.sh
RUN chmod -R 777 /entrypoint/
RUN ls -l
RUN pwd

CMD [ "pwd", "ls -l" ]
ENTRYPOINT ["/entrypoint/entrypoint.sh"]