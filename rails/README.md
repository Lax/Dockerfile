# Usage

```
curl -s -L -O https://github.com/Lax/Dockerfile/raw/master/rails/Dockerfile

cat > Gemfile <<EOF
source 'https://rubygems.org'

gem 'rails'
EOF

bundle exec rails new -f .
```

```
docker build -t rails-env .

docker run -i -t --rm rails-env rails s
```
