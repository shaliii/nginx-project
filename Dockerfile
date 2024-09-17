# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy custom configuration file (if any) to the container
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website content to the container
# The default Nginx web root directory is /usr/share/nginx/html
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

