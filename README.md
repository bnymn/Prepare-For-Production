# Prepare-For-Production

This is how I prepare my production environment for my rails applications.

(!) DO NOT FORGET mysql_secure_installation

# How To Create a New User and Grant Permissions in MySQL 

```mysql
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';

CREATE DATABASE `databasename`;

ALTER DATABASE `databasename` CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON `databasename`.* TO 'newuser'@'localhost';

FLUSH PRIVILEGES;
```
