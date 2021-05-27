FROM ruby:2.5

WORKDIR /src
RUN bundle install
RUN bundle exec rackup

CMD ["rails", "server", "-b", "0.0.0.0"]
