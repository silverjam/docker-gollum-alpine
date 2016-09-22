FROM ruby:alpine

RUN apk add --update --virtual build-deps build-base icu-dev \
    && apk add --update icu-libs git bash \
    && gem install gollum redcarpet org-ruby github-markdown \
    && apk del build-deps \
    && rm -rf /var/cache/apk/*

VOLUME /wiki
WORKDIR /wiki

CMD ["gollum", "--port", "80", "--css"]

EXPOSE 80
