FROM node:20

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn

COPY . .

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "yarn", "start" ]