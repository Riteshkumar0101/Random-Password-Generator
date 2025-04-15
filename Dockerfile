# Use official Nginx image as base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Clear default files
RUN rm -rf ./*

# Copy HTML, CSS, and image assets
COPY index.html .
COPY styles.css .
COPY script.js .
COPY images/ images/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
