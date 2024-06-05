# Use an official Git image from the Docker Hub
FROM alpine:latest

# Install git and bash
RUN apk update && apk add git bash

# Set up the Git user configuration for the container
RUN git config --global user.name "tariful-islam98"
RUN git config --global user.email "abir.tariful.islam@gmail.com"

# Add a script to clone, commit, and push the repo
COPY push-to-github.sh /usr/local/bin/push-to-github.sh
RUN chmod +x /usr/local/bin/push-to-github.sh

# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/push-to-github.sh"]
