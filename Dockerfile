FROM node:8.9.1

RUN mkdir -p /gitbook
WORKDIR /gitbook

RUN npm install -g gitbook-cli && npm cache clean --force

RUN gitbook fetch 3.2.2
ONBUILD RUN gitbook fetch latest


COPY . /gitbook
RUN npm update && gitbook install .

EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook"]
