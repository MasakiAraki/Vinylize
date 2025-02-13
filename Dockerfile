FROM ruby:3.1.2

RUN apt-get update -yqq && apt-get install -yqq \
    vim \
    npm \
    postgresql-client-13 \
    fonts-takao
RUN npm install -g yarn

COPY Gemfile* /usr/src/vinylize/

WORKDIR /usr/src/vinylize
RUN bundle install

COPY . /usr/src/vinylize

CMD ["bin/rails", "s", "-b", "0.0.0.0"]