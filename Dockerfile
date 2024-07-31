# Use the official httpd (Apache) image with Alpine Linux
FROM httpd:alpine

# Copy the HTML file to the Apache web root
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
