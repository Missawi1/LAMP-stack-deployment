FROM mysql:5.7.25
LABEL "Project"="Lamp"
LABEL "Author"="Awele"

ENV MYSQL_ROOT_PASSWORD="Password"
ENV MYSQL_DATABASE="mydatabase"

ADD ../database_setup.sql docker-entrypoint-initdb.d/database_setup.sqlg