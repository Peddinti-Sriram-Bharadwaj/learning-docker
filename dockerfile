# Use an official python runtime as the base image
FROM python:3.12-rc-bookworm

VOLUME /app/data

# set the working directory in the container to /app
WORKDIR /app

#copy the directory contents into the container at /app
COPY . /app

#install the required packages
RUN pip install --no-cache-dir -r requirements.txt

#set the environmebnt variable for flask 
ENV FLASK_APP=app.py

#run the command to start the flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]

LABEL "com.example.vendor"="Sriram Bharadwaj" version="1.0" description="The Sriram Bharadwaj website \ 
using the python base image"
