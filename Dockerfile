FROM node:12-alpine

ENV APP_ROOT /app
ENV HOST 0.0.0.0

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

EXPOSE 3000

CMD cp .env.local .env && npm install && npm upgrade && npm run dev
