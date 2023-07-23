FROM mongo:6.0.8
EXPOSE 27017

#Create a new database during container initialization
ENV MONGO_INITDB_DATABASE=user_management_db