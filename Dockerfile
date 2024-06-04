FROM python:3.10-alpine

#     python3.10 \
#     python3-pip \
#     git

RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh
RUN python3 /usr/bin/feed.py

WORKDIR /
RUN chmod -R 775 entrypoint.sh
RUN ls -l
RUN pwd

ENTRYPOINT ["/entrypoint.sh"]