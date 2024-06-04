FROM python:3.10-alpine

#     python3.10 \
#     python3-pip \
#     git

# RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]