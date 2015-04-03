FROM ubuntu:trusty
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
COPY . /app
RUN cd /app; npm install
EXPOSE 8080
CMD ["nodejs", "/app/index.js"]
