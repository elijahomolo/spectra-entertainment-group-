#FROM node:20-bullseye-slim AS build
#WORKDIR /app
#COPY . /app
#RUN npm install

#FROM gcr.io/distroless/nodejs20-debian11
#COPY --from=build /app /usr/src/app
#WORKDIR /usr/src/app
#COPY --from=busybox:1.35.0-uclibc /bin/sh /bin/sh


#CMD ["npm", "run", "deploy"]
#
#EXPOSE 80

FROM node:20-alpine

RUN apk add --update qemu-x86_64


RUN apk add --no-cache \
  make g++ && \
  apk add vips-dev fftw-dev --update-cache \
  && rm -fR /var/cache/apk/*

# set the working directory
WORKDIR /app
# copy the repository files to it
COPY . /app

RUN npm install
RUN npm install -g gatsby-cli

RUN gatsby build --verbose

EXPOSE 80

CMD npm run serve
