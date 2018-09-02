FROM node:carbon

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add 
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update \
        && apt-get install -y yarn \
        && rm -rf /var/lib/apt/lists/*
RUN yarn global add json-merge-cli
