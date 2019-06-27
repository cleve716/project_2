DROP DATABASE IF EXISTS clownsdb;
CREATE DATABASE clownsdb;
USE clownsdb;

CREATE TABLE food(
id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	text varchar(255) NOT NULL,
    quantity varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
	PRIMARY KEY (id)

);

CREATE TABLE weapons(
id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	text varchar(255) NOT NULL,
    quantity varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
	PRIMARY KEY (id)

);

CREATE TABLE gear(
id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	text varchar(255) NOT NULL,
    quantity varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
	PRIMARY KEY (id)

);


