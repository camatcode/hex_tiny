#!/bin/sh
cd /acme 
erl -noshell -s inets -eval 'inets:start(httpd,[{port,8000},{server_name,"localhost"},{server_root,"."},{document_root,"public"}]).'
