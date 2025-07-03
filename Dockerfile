#Dockerfile for python applications, test application

FROM node:16-alpine 
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"] 
