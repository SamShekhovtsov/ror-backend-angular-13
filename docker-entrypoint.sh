#!/bin/sh
set -e

if [ -f $PWD/tmp/pids/server.pid ]; then
  rm $PWD/tmp/pids/server.pid
fi

exec "$@"