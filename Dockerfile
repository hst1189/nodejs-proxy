FROM node:lts-alpine3.23

WORKDIR /app

COPY index.js index.html package.json ./

RUN apk update && apk add --no-cache bash openssl curl &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]
