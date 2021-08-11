FROM ruby:3.0.1
ARG DATABASE_HOST
ARG DATABASE_USER
ARG DATABASE_PASSWORD
ARG DATABASE_URL
ARG RAILS_ENV
ARG RACK_ENV
ARG RAILS_LOG_TO_STDOUT
ARG AILS_SERVE_STATIC_FILES
ARG S3_ACCESSKEYID
ARG S3_SECRETACCESSKEY
ARG SECRET_KEY_BASE
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app

RUN bundle config set without 'development test'
RUN bundle install

COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0", "-e", "staging"]
