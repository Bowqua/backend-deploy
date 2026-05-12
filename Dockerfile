FROM node:20-alpine

WORKDIR /app

COPY deploy-app/package*.json ./

RUN npm install

COPY deploy-app/ .

ENV PORT=3000
EXPOSE 3000

CMD ["npm", "start"]