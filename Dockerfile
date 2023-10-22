# SERVER IMAGE
# Get the base image
FROM python:3.7 AS server

# Install packages
RUN pip install django

# Mount the application code to the image
COPY . project

# Set working directory
WORKDIR /project

# Expose port. Necessary?
EXPOSE 8000