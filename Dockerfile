FROM node:20
WORKDIR /app
RUN git clone https://github.com/se-Rocket-Dev/Parse-Server-API.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8205
CMD ["node", "api-wallboard-https.js"]

