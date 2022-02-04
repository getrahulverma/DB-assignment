-- Create test user & provide privileges
-- DML Privileges has been given to this user under ddl.sql

CREATE USER app_user IDENTIFIED BY app_user_pwd;

GRANT CONNECT, RESOURCE TO app_user;

