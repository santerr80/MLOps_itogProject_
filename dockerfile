FROM python:3.7-alpine

# Install required packages
RUN apt-get update \
 && apt-get upgrade\
 && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-setuptools
 
# Copy this repo to a folder in the Docker container
COPY . /app
 
# Set the work directory
WORKDIR /app
 
# Install all the required packages
RUN pip3 install -r python_requirements.txt \
 && pip3 install .
