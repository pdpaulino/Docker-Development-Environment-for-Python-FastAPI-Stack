# FROM alpine:3.16
FROM python:3.9.16-alpine3.16

# Needed packages for development
RUN apk add bash  gcc curl g++ wget nodejs postgresql-contrib zlib yarn openssl-dev git libcurl libpq make sqlite-dev tzdata mysql-client libxml2 libffi mysql libpq postgresql-dev curl-dev libev linux-headers boost-dev pcre-dev

# set the working directory in the container
WORKDIR /home/code

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
#COPY code/ .

# command to run on container start
#CMD [ "python", "./server.py" ]
EXPOSE 3000