# Dockerfile (for development)
FROM ruby:3.2

WORKDIR /app

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN rm -f tmp/pids/server.pid

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

