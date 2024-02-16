# syntax=docker/dockerfile:1
FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client && \
    apt-get -y install vim

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN gem install --default bundler -v 2.4.20
RUN bundle install --verbose

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]