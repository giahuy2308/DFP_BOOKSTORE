# Pull base image
FROM python:3.12.4-slim-bullseye

# Set env variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRTEBYTECODE 1
ENV PYTHONUNBUFFERED 1 

# Set work dir
WORKDIR /BOOKSTORE

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .