FROM alpine:3.8

ENV PAGER=less \
    LESS="-eirMX"

RUN [ "/bin/sh", "-c", " \
  apk add --no-cache python less groff jq && \
  apk add --no-cache --virtual build-deps py2-pip && \
  pip install --trusted-host pypi.org awscli && \
  apk del --purge -r build-deps \
"]

ENTRYPOINT ["/usr/bin/aws"]
CMD ["--version"]
