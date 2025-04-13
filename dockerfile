# Dockerfile
FROM ruby:3.2

# Install dependencies
#RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory
WORKDIR /myapp

# Copy Gemfile and install gems
COPY Gemfile* ./
RUN bundle install

# Copy the rest of the app
COPY . .

# Precompile assets (optional if using Rails frontend)
# RUN bundle exec rake assets:precompile

# Start the server
CMD ["rails", "server", "-b", "0.0.0.0"]
