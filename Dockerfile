FROM ubuntu:14.04 

RUN  apt-get install -y curl
RUN  curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN  apt-get install -y nodejs

COPY . /src
RUN  cd /src; npm install

CMD ["node" , "/src/app.js"]

EXPOSE  3000