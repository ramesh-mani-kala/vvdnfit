# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install necessary system packages
RUN apt-get update && apt-get install -y git

# Install Robot Framework and other dependencies
RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary

# Clone the specified Git repository
# Replace 'your-repo-url' with the actual URL of your Git repository
RUN git clone https://github.com/purva-vvdn/TestFramework.git

# Run Robot Framework tests (you can customize this command as needed)
CMD ["robot","-d","results", "TestFramework"]
# COPY /usr/src/app/output.xml .
