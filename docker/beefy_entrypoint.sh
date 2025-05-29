#!/bin/sh
postgres > log 2>&1 &
sleep 1
cat log
cd /code/hexpm/ && mix phx.server

