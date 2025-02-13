FROM ruby:3.1.2

RUN apt-get update -yqq && apt-get install -yqq \
    wget \
    gnupg2 && \
    echo "deb http://apt.postgresql.org/pub/repos/apt bullseye-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update -yqq && apt-get install -yqq \
    vim \
    npm \
    postgresql-client-16 \
    fonts-takao
RUN npm install -g yarn

COPY Gemfile* /usr/src/vinylize/

WORKDIR /usr/src/vinylize
RUN bundle install

COPY . /usr/src/vinylize

CMD ["bin/rails", "s", "-b", "0.0.0.0"]