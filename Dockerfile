# Use a Python base image in version 3.8
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy files to working directory
COPY . /app

# Install packages
RUN pip install -r requirements.txt

# Expose port 3111
EXPOSE 3111

# Initialize database
RUN python init_db.py

# Command to execute the app
CMD ["python", "app.py"]
