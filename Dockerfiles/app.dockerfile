FROM node:16

#Set working directory
WORKDIR  /home/node/app

#Update server and install git
RUN apt-get update && apt-get install -y git

##Clone public git repository into this location
RUN git clone https://github.com/Missawi1/User-Management-System.git . && ls -la
WORKDIR /app/User-Management-System
RUN npm install
ENV PORT=3000
ENV MONGO_URI=mongodb://127.0.0.1/user_management_db
EXPOSE 3000
CMD [ "npm". "start" ]