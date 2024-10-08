# Dockerfile
FROM ruby

WORKDIR /usr/src/app

COPY . .

RUN gem install bundler
RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
