FROM ruby:3.4

LABEL mantainer="planeair@libero.it" \
 app.name="cassandra-web" \
 version="0.6.0"

COPY cassandra-web-*.gem /
COPY entrypoint.sh /

RUN \
  gem install $(ls /cassandra-web-*.gem) && \
  chmod a+x /entrypoint.sh && \
  rm -f cassandra-web-*.gem

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
