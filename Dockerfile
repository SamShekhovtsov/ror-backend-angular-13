FROM ruby:3.0.3

RUN apt-get update -qq && apt-get install -y software-properties-common whois && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs postgresql-contrib

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt update
RUN apt install yarn
#RUN apt install npm --assume-yes && npm install bower -g

ARG WORK_DIR=/rorbackendangular13/

WORKDIR ${WORK_DIR}

COPY Gemfile* ${WORK_DIR}
RUN bundle install -j 20

COPY . ${WORK_DIR}

#RUN rake bower:install[--allow-root]

ENTRYPOINT ["sh","/rorbackendangular13/docker-entrypoint.sh"]

# check every 5s to ensure this service returns HTTP 200
#HEALTHCHECK --interval=5s --timeout=3s --start-period=10s --retries=3 CMD curl http://localhost:3000/healthz || exit 1

EXPOSE 3000
CMD ["bundle","exec","rails","server","-b","0.0.0.0"]
