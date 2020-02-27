FROM ruby:2.6

LABEL mantainer="planeair@libero.it" \
 app.name="cassandra-web" \
 version="0.4.5"

COPY cassandra-web-*.gem /
COPY entrypoint.sh /

RUN \
  gem install $(ls /cassandra-web-*.gem) && \
  chmod a+x /entrypoint.sh && \
  rm -f cassandra-web-*.gem

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]