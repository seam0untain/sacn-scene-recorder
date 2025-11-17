#!/bin/sh

cd /app
yarn build
mkdir config
yarn migrate
exec "$@"