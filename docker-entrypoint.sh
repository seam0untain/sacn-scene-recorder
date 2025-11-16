#!/bin/sh

mkdir config
yarn migrate
exec "$@"