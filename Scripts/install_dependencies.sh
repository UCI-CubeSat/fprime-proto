#!/bin/bash

# Install system dependencies
apt-get update && apt-get upgrade

apt-get install -y \
    build-essential \
    cmake \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    git \
    python3 \
    python3-pip \
    python3-venv \


rm -rf /var/lib/apt/lists/*