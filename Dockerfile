FROM ruby:2.4.4-jessie

ENV INSTALL_PATH /bk
RUN mkdir -p $INSTALL_PATH
RUN apt-get update -y && apt-get install nodejs -y

WORKDIR $INSTALL_PATH
COPY Gemfile Gemfile
RUN bundle install
#
COPY . .
RUN rm -f Gemfile.lock
RUN bundle install
RUN bundle exec bin/rake db:migrate
RUN bundle exec bin/rake db:seed
CMD bundle exec rails server
