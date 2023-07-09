FROM node:20-alpine
LABEL maintainer="efg.river"
ENV SRC_DIR /usr/local/cognito-srp-login-driver
RUN mkdir -p $SRC_DIR
WORKDIR ${SRC_DIR}
ADD . ${SRC_DIR}
RUN npm install
CMD node index.js
