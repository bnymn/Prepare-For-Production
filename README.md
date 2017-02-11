# Prepare-For-Production

This is how I prepare my production environment for my rails applications.

(!) DO NOT FORGET mysql_secure_installation

# How To Create a New User and Grant Permissions in MySQL 

```mysql
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';

FLUSH PRIVILEGES;
```
