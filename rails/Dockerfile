FROM ruby

MAINTAINER Liu Lantao <liulantao@gmail.com>
ENV REFRESHED_AT 2017-01-25

RUN apt-get update && \
    apt-get install -y --no-install-recommends postgresql-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY ..

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
