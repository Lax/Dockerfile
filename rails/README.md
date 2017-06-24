# Usage

## Run

```
docker run -i -t --rm -v .:/usr/src/app liulantao/rails "bundle install && rails server"
```

## Build

Build image:

```
curl -s -L -O https://github.com/Lax/Dockerfile/raw/master/rails/Dockerfile

cat > Gemfile <<EOF
source 'https://rubygems.org'

gem 'rails'
EOF

docker build -t rails-env .
```

Create rails project:

```
docker run -i -t --rm -v `pwd`:/app rails-env rails new . -f -d postgresql
```

Rebuild image:

```
docker build -t rails-env .
```

Run `rails server` (defailt command):

```
docker run -i -t --rm -v `pwd`:/app rails-env
```
