FROM ruby:3.0.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV RAILS_ROOT /var/www/gilbertmarcel_spina
RUN mkdir -p $RAILS_ROOT

WORKDIR /$RAILS_ROOT

# Setting env up
ARG RAILS_ENV
ENV RAILS_ENV=$RAILS_ENV
ENV RAKE_ENV=$RAILS_ENV
ENV RACK_ENV=$RAILS_ENV

COPY . .
# COPY Gemfile /gilbertmarcel_spina/Gemfile
# COPY Gemfile.lock /gilbertmarcel_spina/Gemfile.lock

RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]