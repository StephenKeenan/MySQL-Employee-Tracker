USE employees;

INSERT INTO department (name)
VALUES ('Legal'),('Sales');

INSERT INTO role (title, salary, department_id)
VALUES("cashier", 1000, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Smith", 1, null);
