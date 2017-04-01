FROM node:6-slim

RUN apt-get update
RUN apt-get install -y --no-install-recommends git calibre
RUN npm install -g gitbook-cli

RUN mkdir -p /gitbook
RUN mkdir -p /dev
WORKDIR /gitbook

RUN gitbook fetch 3.2.2
ONBUILD RUN gitbook fetch latest


COPY . /gitbook
RUN gitbook install .

EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook"]
