FROM ruby:2.7.2

RUN wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list
RUN set -x && apt-get update -y -qq && apt-get install -yq nodejs yarn libxml2-dev libxslt-dev gcc
# RUN gem install bundler -v 1.9.9
RUN gem install bundler:2.2.22
RUN gem install nokogiri --platform=ruby
RUN bundle config set force_ruby_platform true

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lockr
# RUN bundler _1.9.9_
RUN bundle install
COPY . /app
