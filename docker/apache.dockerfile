# Use an official Apache image as a parent image
FROM httpd:2.4

# Copy the contents of your Apache project into the container's web root
COPY ./Application/ /usr/local/apache2/htdocs/

# Expose port 80 to allow external connections
EXPOSE 80
