FROM node
ENV PORT=8080
WORKDIR .
COPY package*.json ./
RUN yarn add express
COPY . . 
EXPOSE 8080
CMD node server.js