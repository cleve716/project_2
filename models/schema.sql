DROP DATABASE IF EXISTS clownsdb;

CREATE DATABASE clownsdb;
USE clownsdb;

CREATE TABLE examples (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  text VARCHAR (255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  quantity INT NOT NULL,
  category  VARCHAR(45) NOT NULL,
  createdAt timestamp default now(), 
  updatedAt timestamp default now() on update now(),
  PRIMARY KEY (id)
);




INSERT INTO examples (name, text, quantity, price, category) values ('beef flavored cotton candy', 'have it for dinner',100,1.99,'food');
INSERT INTO examples (name, text, quantity, price, category) values ('cotton candy flavored beef', 'have it for dessert',100,4.99,'food');
INSERT INTO examples (name, text, quantity, price, category) values ('freeze-dried snow cones', 'just add water',100,0.99,'food');
INSERT INTO examples (name, text, quantity, price, category) values ('freeze-dried water mix', 'if you insist',10000,0.01,'food');
INSERT INTO examples (name, text, quantity, price, category) values ('concrete whip cream pie', 'clowns love to get pies in their face',100,4.99,'weapons');
INSERT INTO examples (name, text, quantity, price, category) values ('cyanide laced clown makeup', 'excellent clown bait with an added kick',100,3.99,'weapons');
INSERT INTO examples (name, text, quantity, price, category) values ('black beret clown deterrent', 'clowns hate mimes',100,4.99,'weapons');
INSERT INTO examples (name, text, quantity, price, category) values ('nail gun', 'stop their over-sized shoes in their tracks',100,49.99,'weapons');
INSERT INTO examples (name, text, quantity, price, category) values ('circus wagon RV', 'will NOT attract clowns',8,24999.99,'gear');
INSERT INTO examples (name, text, quantity, price, category) values ('foam red noses', 'blend in with the herd',100,0.99,'gear');
INSERT INTO examples (name, text, quantity, price, category) values ('hazmat suit', 'protect youself in the sewers',100,4.99,'gear');
INSERT INTO examples (name, text, quantity, price, category) values ('giant red balloon', 'if the going gets rough, get going!',100,39.99,'gear');
