# pulling pre-built setup for ruby
FROM ruby

# setting work directory (default folder for dev env)
WORKDIR /home/app

# setting port env variable to 3000
ENV PORT 3000

# exposing port of container to local machine
EXPOSE $PORT

# installing bundler, rails, nodejs
RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs

# docker will execute bash terminal on container start
ENTRYPOINT ["/bin/bash"]