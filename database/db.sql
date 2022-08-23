CREATE DATABASE manieri_db;

USE manieri_db;

CREATE TABLE users(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(16) NOT NULL,
    fullname VARCHAR(32) NOT NULL
);
-- para cambiar algo de la tabla users
ALTER TABLE users
MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--muestra la tabla 
DESCRIBE users;


--LINKS TABLE

CREATE TABLE links(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(32) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT(255) NOT NULL,
    user_id INT(11),
    created_ad timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);


