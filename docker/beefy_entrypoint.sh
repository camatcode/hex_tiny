#!/bin/sh
postgres > log 2>&1 &
sleep 1
cat log
cd /code/hexpm/ && iex -S mix phx.server 

