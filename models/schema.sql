DROP DATABASE IF EXISTS clownsdb;

CREATE DATABASE clownsdb;
USE clownsdb;

CREATE TABLE clowns (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR() NOT NULL,
  text VARCHAR (255) NOT NULL,
  category  VARCHAR(45) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,  
  createdAt datetime default now(), 
  updatedAt datetime default now() on update now(),
  PRIMARY KEY (id)
);




INSERT INTO clowns (name, text, category, quantity, price) values ('beef flavored cotton candy', 'have it for dinner', 'food',100,1.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('cotton candy flavored beef', 'have it for dessert', 'food',100,4.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('freeze-dried snow cones', 'just add water', 'food',100,0.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('freeze-dried water mix', 'if you insist', 'food',100,0.01);
INSERT INTO clowns (name, text, category, quantity, price) values ('concrete whip cream pie', 'clowns love to get pies in their face', 'weapons',100,4.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('cyanide laced clown makeup', 'excellent clown bait with an added kick', 'weapons',100,3.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('black beret clown deterrent', 'clowns hate mimes', 'weapons',100,4.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('nail gun', 'stop their over-sized shoes in their tracks', 'weapons',100,49.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('circus wagon RV', 'will NOT attract clowns', 'gear',8,24999.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('foam red noses', 'blend in with the herd', 'gear',100,0.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('hazmat suit', 'protect youself in the sewers', 'gear',100,4.99);
INSERT INTO clowns (name, text, category, quantity, price) values ('giant red balloon', 'if the going gets rough, get going!', 'gear',100,39.99);
