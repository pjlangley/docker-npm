FROM node:lts-alpine

VOLUME /app
WORKDIR /app

ENTRYPOINT ["npm"]
CMD ["--help"]

LABEL maintainer="Peter J Langley"