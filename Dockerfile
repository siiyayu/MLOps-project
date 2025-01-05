# Use Python 3.8 as the base image
FROM python:3.9-slim-buster

# Verify Python version for debugging
RUN python --version

# Update package list and install AWS CLI
RUN apt update -y && apt install awscli -y

# Set the working directory inside the container
WORKDIR /app

# Copy application files to the container
COPY . /app

# Verify Python version for debugging
RUN python --version

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


CMD ["python3", "app.py"]