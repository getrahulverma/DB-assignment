-- Run as sysdba

CREATE USER onlinestoredb IDENTIFIED BY onlinestoredb_pwd;

GRANT CONNECT, RESOURCE, DBA TO onlinestoredb;


