FROM elixir:1.18-alpine AS build
RUN apk update && apk add openssl
RUN mkdir /acme
ADD docker/entrypoint.sh /acme/entrypoint.sh
RUN cd /acme && openssl genrsa -out private_key.pem
RUN cd /acme && mkdir public && mix local.hex --force &&  mix hex.registry build public --name=acme --private-key=private_key.pem
RUN cd /acme && mix hex.package fetch decimal 2.0.0 && mv /acme/decimal-2.0.0.tar /acme/public/tarballs/ && mix hex.registry build public --name=acme --private-key=private_key.pem

FROM elixir:1.18-alpine

COPY --from=build /acme /acme
EXPOSE 8000

ENTRYPOINT ["/acme/entrypoint.sh"]
