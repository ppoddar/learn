# ------------------------------------
# A containerized node.js application 
# ------------------------------------
FROM node:12
COPY package.json ./
COPY index.js ./
COPY public ./public/

RUN npm install 
RUN npm rebuild
# ---------------------------------------
# Expose default HTTP port 80
# To buil and run this container
#    $ docker build -t learn .
#    $ docker run -d -p80:80 learn
# ---------------------------------------
EXPOSE 80
CMD node index.js
