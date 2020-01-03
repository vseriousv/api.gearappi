FROM node:10.15.3-alpine
ARG APP_DIR=app
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}
COPY package*.json ./
RUN npm install
EXPOSE 4000
CMD [ "npm", "run", "start"]