FROM mysql:5.7

ENV MYSQL_DATABASE=NewsDB \
  MYSQL_USER=user \
  MYSQL_PASSWORD=password \
  MYSQL_ROOT_PASSWORD=password

COPY ./database.sql /docker-entrypoint-initdb.d/

EXPOSE 3306