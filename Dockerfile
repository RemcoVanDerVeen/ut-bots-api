FROM ruby:3.4.7-alpine

ENV APP_ROOT=/app \
    BUNDLE_PATH=/bundle \
    GEM_HOME=/bundle

ENV PATH="${BUNDLE_PATH}/bin:${PATH}" \
    BUNDLE_APP_CONFIG="$GEM_HOME"

RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"

HEALTHCHECK --start-period=120s --interval=10s CMD wget --no-verbose --tries=1 --spider http://localhost:3000 || exit 1

WORKDIR $APP_ROOT

RUN apk add --no-cache --update \
    build-base \
    linux-headers \
    postgresql-dev \
    tzdata \
    git \
    curl \
    gcompat \
    yaml-dev

RUN gem install bundler

COPY ./Gemfile* $APP_ROOT/

RUN bundle install

COPY . $APP_ROOT/

CMD ["rails", "server", "-b", "0.0.0.0"]
