FROM library/rails:4.2.2
MAINTAINER Flavio Castelli <fcastelli@suse.com>

# ENV COMPOSE=1
ENV RAILS_ENV=production
EXPOSE 3000

WORKDIR /portus
COPY Gemfile* ./
RUN bundle install --retry=3

ADD . .
