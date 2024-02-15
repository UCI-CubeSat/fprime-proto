#!/bin/bash

echo "Starting Docker..."

docker start fpp-config && docker attach fpp-config

echo "Goodbye, World"