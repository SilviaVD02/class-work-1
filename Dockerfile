# The base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update -y
RUN apt-get install -y python3 pip3

# Install Python modules needed by the Python app
RUN pip3 install -r /src/requirements.txt

#Copy the needed files for the app to work inside the conteiner
COPY . . 
#THIS copies the current directory in our shell could case the current directory is "/class-work-1" and 
#copies its conetnt for the conteiner to be able to use them for itself

# Declare the port number the container should expose
EXPOSE 5000

# Run the application
CMD ["python3", "/src/app.py"]
