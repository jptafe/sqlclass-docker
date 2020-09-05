FROM mariadb:10

RUN mkdir /opt/sqldumps
WORKDIR /opt/sqldumps
COPY . .

COPY pms.sql /docker-entrypoint-initdb.d/

#RUN /usr/sbin/service mariadb start;
    #/usr/bin/mysql -u root < /opt/sqldumps/pms.sql;
    #/usr/bin/mysql -u root -e 'GRANT SELECT on pms.* to student@localhost';
CMD ["mysqld"]
