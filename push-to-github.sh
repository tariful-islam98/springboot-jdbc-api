#!/bin/bash

# Define the repository URL
REPO_URL=https://github.com/tariful-islam98/springboot-jdbc-api.git

# Clone the repo into a temporary directory
git clone $REPO_URL /repo

# Copy files from local directory to the repo directory
cp -r /local-repo/* /repo/

# Change to the repo directory
cd /repo

# Commit and push the changes
git add .
git commit -m "Initial Commit"

# Set GitHub credentials
git config --global credential.helper 'store --file=/root/.git-credentials'
echo "https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com" > /root/.git-credentials

# Create the master branch if it doesn't exist and push to it
git branch -M master
git push -u origin master
