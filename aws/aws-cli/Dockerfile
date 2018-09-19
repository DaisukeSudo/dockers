FROM alpine:3.8

ENV PAGER=less \
    LESS="-eirMX"

RUN [ "/bin/sh", "-c", " \
  apk add --no-cache python less groff jq && \
  apk add --no-cache --virtual build-deps py2-pip tzdata && \
  pip install --trusted-host pypi.org awscli && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  apk del --purge -r build-deps \
"]

ENTRYPOINT ["/usr/bin/aws"]
CMD ["--version"]
