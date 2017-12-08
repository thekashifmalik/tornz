FROM node:latest

RUN apt update && apt install -y git

RUN git clone https://github.com/jfurrow/flood.git
WORKDIR flood
COPY etc/config.js config.js
RUN npm install && npm run build

CMD ["npm start"]
