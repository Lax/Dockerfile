FROM ruby:slim

MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2017-06-24

ENV WORK_DIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc make git && \
    apt-get install -y --no-install-recommends mysql-client postgresql-client sqlite3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR $WORK_DIR
COPY Gemfile ./
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
