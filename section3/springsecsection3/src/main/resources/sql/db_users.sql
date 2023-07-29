-- springsecurity database
DROP DATABASE IF EXISTS springsecurity;
DROP USER IF EXISTS `springsecurityadmin`@`%`;
DROP USER IF EXISTS `springsecurityuser`@`%`;
CREATE DATABASE IF NOT EXISTS springsecurity CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `springsecurityadmin`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `springsecurity`.* TO `springsecurityadmin`@`%`;
CREATE USER IF NOT EXISTS `springsecurityuser`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW ON `springsecurity`.* TO `springsecurityuser`@`%`;
FLUSH PRIVILEGES;