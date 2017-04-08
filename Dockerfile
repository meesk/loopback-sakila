FROM node:boron

# Create app dir
RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/

# npm install
COPY package.json /usr/src/app/
RUN npm install

# copy src
COPY . /usr/src/app

EXPOSE 8080

CMD [ "node", "." ]

