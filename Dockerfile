#Download base image ubuntu 18.04
FROM ubuntu:18.04

# LABEL about the custom image
LABEL description="This is custom Docker Image with Terraform Docs"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update && \
    apt install wget -y && \
    apt install curl -y && \
    mkdir /devops && \
    curl -Lo /devops/terraform-docs https://github.com/terraform-docs/terraform-docs/releases/download/v0.10.0-rc.1/terraform-docs-v0.10.0-rc.1-$(uname | tr '[:upper:]' '[:lower:]')-amd64 && \
    chmod +x /devops/terraform-docs && \
    mv /devops/terraform-docs /usr/local/bin

# Define working directory.
WORKDIR /devops
COPY ./run.sh /

# Define default command.
ENTRYPOINT ["/run.sh"]
#CMD ["bash"]
