FROM ruby:2.3
RUN mkdir -p /scenario
WORKDIR /scenario
ENV LANG=C.UTF-8
CMD (bundle check || (gem install bundler && bundle install)) && bundle exec rake
