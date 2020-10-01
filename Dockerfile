FROM rubylang/ruby:2.7.1-bionic

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    APP_HOME=/usr/src/app
ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=4

RUN apt-get update -qq
RUN apt-get upgrade -qq
RUN apt-get install -y vim \
                       sqlite \
                       libsqlite3-dev

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile \
     Gemfile.lock
