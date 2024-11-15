# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set environment variables to non-interactive to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install ca-certificates before using mirrors
RUN apt-get update && apt-get install -y ca-certificates

# Replace the default Ubuntu repository with a Chinese mirror
RUN sed -i 's|http://archive.ubuntu.com|https://mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list && \
    sed -i 's|http://security.ubuntu.com|https://mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list

# Update and install required packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    build-essential \
    gcc-9 \
    g++-9 \
    python3.8 \
    python3.8-dev \
    python3-pip \
    cmake \
    curl \
    wget \
    software-properties-common

# Set default working directory
WORKDIR /workspace

# Default command
CMD [ "bash" ]
