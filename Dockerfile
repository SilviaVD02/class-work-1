# The base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

# Install Python modules needed by the Python app
COPY requirements.txt /src/requirements.txt
RUN pip3 install -r src/requirements.txt

# Copy files required for the app to run
COPY app.py /src

# Declare the port number the container should expose
EXPOSE 5000

# Run the application
CMD ["python3", "/src/app.py"]
