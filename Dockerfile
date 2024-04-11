FROM ruby:3.3.0-alpine3.19

ENV APP_ROOT=/app \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}" \
    BUNDLE_APP_CONFIG="$GEM_HOME"

RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"

HEALTHCHECK --start-period=120s --interval=10s CMD curl -f http://localhost:3000/ping || exit 1

WORKDIR $APP_ROOT

RUN apk add --no-cache --update build-base \
                                linux-headers \
                                postgresql-dev \
                                tzdata \
                                git \
                                pkgconfig \
                                cmake \
                                curl \
                                gcompat \
                                nodejs npm

RUN gem install bundler:2.3.22

COPY ./Gemfile* $APP_ROOT/

RUN bundle install -j 5

COPY . $APP_ROOT/

CMD ["rails", "s"]
