FROM ruby:3.2.2-alpine

RUN apk update

RUN apk add g++ make mysql-dev tzdata

WORKDIR /app

COPY Gemfile .
# bundle install が実行される前にGemfile.lockが配置され、固定されたバージョンのgemがインストールされる
COPY Gemfile.lock .

# M1のRails(Docker環境)起動時にnokogiriがLoadErrorとなる問題の解決方法
RUN apk add --no-cache gcompat

RUN bundle install