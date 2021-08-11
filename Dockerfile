FROM ruby:3.0.1

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app

RUN bundle config set without 'development test'
RUN bundle install

COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0", "-e", "staging"]
