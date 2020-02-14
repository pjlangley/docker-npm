FROM node:12.16.0-alpine3.11

VOLUME /app
WORKDIR /app

ENTRYPOINT ["npm"]
CMD ["--help"]

LABEL maintainer="Peter J Langley"