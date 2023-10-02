# SERVER IMAGE
# Get the base image
FROM ubuntu:latest AS server

# Install packages
RUN apt-get update && \
    apt-get install -y python3-pip
    
RUN pip3 install django

# Set working directory
WORKDIR /project