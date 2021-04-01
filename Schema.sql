DROP DATABASE IF EXISTS employees;

CREATE database employees;

USE employees;

CREATE TABLE department(
id INT NOT NULL AUTO_INCREMENT,
dep_name VARCHAR(30) NOT NULL,
primary key(id)
);

CREATE TABLE emp_role(
id INT NOT NULL AUTO_INCREMENT,
role_title VARCHAR(30) NOT NULL,
salary DECIMAL(10,2) NOT NULL,
department_id INT NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE employee(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
PRIMARY KEY(id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("King", "England", 4, null), ("The Great", "I AM", 5, 4), ("Jack", "Sparrow", 1, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Will", "Turner", 2, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Hector", "Barbosa", 1, 3), ("Elizabeth", "Swann", 2, null), ("Davy", "Jones", 1, 4), ("Joshamee", "Gibbs", 1, 1), ("James", "Norrington", 3, 9), ("Bootstrap Bill", "Turner", 1, 4), ("Weatherby", "Swann", 3, null);

INSERT INTO emp_role (id, role_title, salary, department_id)
VALUES (4, "King", 1000000,4), (5, "God", 42,5), (1, "Pirate", 74995, 1), (2, "Privateer", 75000, 2), (3, "British Loyalist", 12000, 3);

INSERT INTO department (dep_name)
VALUES ("Pirate Council"), ("Commission of War"), ("Subject of the Crown"),("The Crown"), ("Supernatural");
