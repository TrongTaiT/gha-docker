FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.5lnqd2w.mongodb.net
ENV MONGODB_USERNAME maximilian
ENV MONGODB_PASSWORD eI3R3UfNlJgWJe17

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]