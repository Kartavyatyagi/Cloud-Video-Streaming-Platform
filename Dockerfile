# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy project files to the container's web root directory
COPY . .

# Expose port 80 to access the web server
EXPOSE 80

# Start NGINX when the container runs
CMD ["nginx", "-g", "daemon off;"]
