from node:12
COPY package.json ./
COPY index.js ./
COPY public ./public/

RUN npm install 
RUN npm rebuild

EXPOSE 80
CMD node index.js
