FROM ruby:slim

ENV WORK_DIR /usr/src/app
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2017-06-24

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc make git && \
    apt-get install -y --no-install-recommends mysql-client postgresql-client sqlite3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR $WORK_DIR
COPY Gemfile ./
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
