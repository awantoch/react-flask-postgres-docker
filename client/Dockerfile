FROM node:8.14-alpine

ENV CODE_DIR=/code

RUN apk add --no-cache make

COPY --chown=node:node . ${CODE_DIR}/

WORKDIR ${CODE_DIR}

USER node

RUN npm i

CMD make dev
