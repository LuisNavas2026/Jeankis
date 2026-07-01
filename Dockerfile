FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

# FIX clave
RUN npm cache clean --force
RUN npm install --no-fund --no-audit

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
