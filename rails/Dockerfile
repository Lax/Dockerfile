FROM ruby:2-slim AS builder

MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2018-07-22

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

RUN apt-get update \
&& apt-get install -qq -y build-essential git --fix-missing --no-install-recommends \
&& apt-get install -qq -y nodejs libsqlite3-dev libpq-dev --fix-missing --no-install-recommends \
&& apt autoremove -q -y && rm -rf /var/lib/apt/lists/* \
&& gem install rails nokogiri foreman -N --minimal-deps

ENV WORK_DIR /usr/src/app
WORKDIR $WORK_DIR

RUN rails new . \
&& bundle install && bundle package && bundle install --deployment --frozen --local \
&& bundle exec rails assets:precompile RAILS_ENV=production && rm -rf tmp/cache
