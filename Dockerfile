# Use an official Node.js runtime as the base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY index.html .

# Copy the rest of your app files


# Expose the port the app runs on
EXPOSE 3000

# Command to run your app
CMD ["python3", "-m", "http.server", "3000"]
