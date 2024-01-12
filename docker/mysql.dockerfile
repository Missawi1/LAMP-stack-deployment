# Use an official MySQL image as a parent image
FROM mysql:8.0

# Set the root password for MySQL
ENV MYSQL_ROOT_PASSWORD=root_password

# Create a database and user
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Copy custom MySQL configuration file if needed
# COPY my.cnf /etc/mysql/conf.d/

# Expose port 3306 to allow external connections
EXPOSE 3306
