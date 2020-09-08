FROM ruby:2.6.6-alpine

RUN gem update --system
RUN gem install observr rubocop

WORKDIR /koans