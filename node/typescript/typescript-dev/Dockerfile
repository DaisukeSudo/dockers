FROM node:12.4-alpine

RUN [ "/bin/sh", "-c", " \
  yarn global add typescript && \
  yarn cache clean \
"]

ENTRYPOINT ["/usr/local/bin/tsc"]
CMD ["--version"]
