FROM ruby:2.5

WORKDIR /app
RUN bundle install
RUN bundle exec rackup

CMD ["rails", "server", "-b", "0.0.0.0"]
