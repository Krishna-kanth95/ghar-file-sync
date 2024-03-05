FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y curl jq git docker.io

# Create a folder for the GitHub Runner
RUN mkdir /actions-runner && cd /actions-runner

# Download the latest runner package
RUN curl -o actions-runner-linux-x64-2.314.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.314.1/actions-runner-linux-x64-2.314.1.tar.gz

# Extract the installer
RUN tar xzf ./actions-runner-linux-x64.tar.gz

# Cleanup
RUN rm actions-runner-linux-x64.tar.gz

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
