# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask web server (if using Flask)
EXPOSE 5000

# Command to run the application when the container starts
CMD ["python", "src/app.py"]
 
