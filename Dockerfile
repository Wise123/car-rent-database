FROM mariadb:latest as builder

ENV MYSQL_ROOT_PASSWORD qwerty
ENV LANG=C.UTF-8

ADD ["my.cnf", "/etc/mysql/conf.d/encoding.cnf"]

ADD ["src/01.schema-script.sql", "/docker-entrypoint-initdb.d/01schema-script.sql"]
ADD ["src/10.data-script.sql", "/docker-entrypoint-initdb.d/10data-script.sql"]
