FROM node:8.14-alpine

ENV CODE_DIR=/code

RUN adduser -D -g '' anon
RUN apk add make

COPY --chown=anon:anon . ${CODE_DIR}/

WORKDIR ${CODE_DIR}

USER anon

RUN npm i

CMD make dev
