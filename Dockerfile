  
FROM ruby:2.6.6
# RUN apt-get update -qq && apt-get install -y nodejs && apt-get install -y yarn
RUN apt-get update -qq && apt-get install -y curl && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN gem install bundler
RUN bundle install
RUN yarn install

