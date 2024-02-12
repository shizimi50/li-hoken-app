FROM ruby:3.2.2-alpine

RUN apk update

RUN apk add g++ make mysql-dev tzdata

WORKDIR /app

COPY Gemfile .

# M1のRails(Docker環境)起動時にnokogiriがLoadErrorとなる問題の解決方法
RUN apk add --no-cache gcompat

RUN bundle install