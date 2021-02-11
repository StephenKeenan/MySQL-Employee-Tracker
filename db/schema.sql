DROP database IF exists employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE role (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL UNSIGNED NOT NULL,
    department_id INT NOT NULL,
        FOREIGN KEY (department_id)
         REFERENCES department(id)
         ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) UNIQUE NOT NULL,
    last_name VARCHAR(30) UNIQUE NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id)
         REFERENCES role(id)
         ON DELETE CASCADE
    manager_id INT NULL,
    FOREIGN KEY (manager_id)
         REFERENCES employee(id)
         ON DELETE CASCADE
)