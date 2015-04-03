FROM ubuntu:trusty
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install nodejs
COPY . /app
RUN cd /app
RUN npm install
EXPOSE 8080
CMD ["node", "/app/index.js"]
