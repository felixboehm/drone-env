FROM alpine

RUN apk add --update-cache \
    git \
    && rm -rf /var/cache/apk/*

ADD write-env.sh .
RUN chmod +x ./write-env.sh

WORKDIR /ws
CMD /write-env.sh