# SERVER IMAGE
# Get the base image
FROM ubuntu:latest AS server

# Install packages
RUN apt-get update && \
    apt-get install -y python3-pip
    
RUN pip3 install django
RUN pip3 uninstall pytz tzdata
RUN pip3 install pytz tzdata

# Set working directory
WORKDIR /project