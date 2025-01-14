# Pulling Ubuntu image
FROM ubuntu:latest

# Update packages and install cron
RUN apt-get update && apt-get upgrade

# Setting up work directory
WORKDIR /home/ubuntu

# Copy the script into the container
COPY . /home/ubuntu/

# Run the script
RUN chmod +x bashrc && chmod +x bash_profile

# Run the script
RUN source bashrc
