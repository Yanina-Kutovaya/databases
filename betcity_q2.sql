DROP DATABASE IF EXISTS betcity;
CREATE DATABASE betcity;
USE betcity;

CREATE TABLE department(
id INT UNSIGNED PRIMARY KEY,
name VARCHAR(100)
);

CREATE TABLE employee(
id INT UNSIGNED PRIMARY KEY,
department_id INT UNSIGNED,
chief_id INT UNSIGNED,
name VARCHAR(100),
salary INT UNSIGNED
);

INSERT INTO department(id, name) VALUES
(123, 'administration'),
(456, 'marketing'),
(789, 'production'),
(888, 'direction'),
(999, 'board')
;

INSERT INTO employee(id, department_id, chief_id, name, salary) VALUES
(1, 123, 7, 'Ivanov', 100),
(2, 456, 8, 'Smirnov', 80),
(3, 789, 9, 'Sidorov', 70),
(4, 123, 7, 'Petrov', 200),
(5, 456, 8, 'Egorov', 160),
(6, 789, 9, 'Nikitin', 140),
(7, 888, 10, 'Orlov', 450),
(8, 888, 10, 'Volkov', 200),
(9, 888, 10, 'Medvedev', 180),
(10, 999, NULL, 'Lvov', 500);



SELECT e.name, d.name FROM employee AS e JOIN employee AS m JOIN department AS d
	ON e.department_id = d.id AND m.salary > 1.5 * e.salary AND e.chief_id = m.id;
	
	
