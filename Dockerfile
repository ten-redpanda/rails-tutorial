FROM ruby:3.1.1
ENV LANG C.UTF-8

RUN mkdir /src
WORKDIR /src
COPY src/Gemfile /src/Gemfile
COPY src/Gemfile.lock /src/Gemfile.lock
RUN bundle install
COPY . /src

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
