FROM python:3.7.1-alpine3.8

ENV CODE_DIR=/code

RUN adduser -D -g '' anon
RUN apk add build-base postgresql-dev

COPY --chown=anon:anon . ${CODE_DIR}/

WORKDIR ${CODE_DIR}

RUN pip install -r requirements.txt

USER anon

CMD make dev
