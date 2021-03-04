FROM ubuntu
RUN apt-get udpate
RUN apt-get install python -y
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
