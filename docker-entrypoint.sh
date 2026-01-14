#!/bin/sh

cd /app
mkdir config
yarn migrate
exec "$@"