FROM node:19-alpine3.15

WORKDIR /reddit-clone

COPY . /reddit-clone
RUN npm i -g npm@8.5.1

EXPOSE 3000
CMD ["npm","run","dev"]
