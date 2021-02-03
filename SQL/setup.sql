-- 
-- Setup MySQL / MariaDB MiniTomats database
--
-- You must have permission to create databases on the server
-- run 
--      mysql --user=root --password < setup.sql
--

DROP DATABASE IF EXISTS MiniTomatoes;

CREATE DATABASE IF NOT EXISTS MiniTomatoes;

DROP USER IF EXISTS MiniTomato;

-- Replace password with your secret password 

CREATE USER 'MiniTomato'@'localhost' IDENTIFIED BY 'nee8Teif8Eingiex';

GRANT ALL PRIVILEGES ON MiniTomatoes.* TO 'MiniTomato'@'localhost' ;

GRANT FILE ON *.* TO 'MiniTomato'@'localhost';

FLUSH PRIVILEGES;
