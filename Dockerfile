# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app


# Make port 8080 available to the world outside this container
EXPOSE 8080
RUN pip install flask

# Define environment variable
ENV NAME World

# Run the command to start your application
CMD ["python", "hello_world.py"]