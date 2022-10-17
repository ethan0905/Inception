CREATE DATABASE wordpress;
CREATE USER 'esafar'@'%' IDENTIFIED BY '1234';
-- For GRANT ALL privileges for esafar giving this user full control over the wordpress database
-- These privileges are for wordpress and apply to all tables in this database,
-- which is denoted by .* as follows
GRANT ALL PRIVILEGES ON wordpress.* TO 'esafar'@'%';
-- Saving your changes
FLUSH PRIVILEGES;
-- To change the authentication or database resource characteristics of a database user
-- To allow a proxy server to connect as a client without authentication
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root1234';
