FROM node:20

COPY package.json yarn.lock /

RUN yarn

COPY . .
RUN yarn migrate
RUN yarn build

CMD [ "yarn", "start" ]