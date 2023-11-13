FROM node:latest

WORKDIR /app

RUN apt install -y curl

RUN npm install 

COPY ./SubService.js .

EXPOSE 80

CMD [ "node", "SubService.js" ]
