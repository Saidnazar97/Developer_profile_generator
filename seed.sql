DROP DATABASE IF EXISTS employees_db;
CREATE database employees_db;
USE employees_db;

CREATE TABLE department (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE emp_role (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(9,2) NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
);

SELECT * FROM department;
SELECT * FROM emp_role;
SELECT * FROM employee;

SELECT employee.id, employee.first_name,  emp_role.title, employee.manager_id
FROM employee
INNER JOIN emp_role ON emp_role.id = employee.role_id;

UPDATE employee SET role_id = ? WHERE id = ?;
DELETE FROM employee WHERE id = ?;