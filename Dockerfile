FROM node:latest

WORKDIR /usr/app

COPY ./package.json .

COPY ./dist ./dist

COPY .env .

COPY ./prisma ./prisma
EXPOSE 5000

RUN npm install

CMD ["node", "dist/index.js"]