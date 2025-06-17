CREATE TABLE employees.employees (
                                     id SERIAL PRIMARY KEY,
                                     name VARCHAR(100) NOT NULL,
                                     role VARCHAR(50) NOT NULL,
                                     department_id INT REFERENCES human_resources.departments(id),
                                     hired_at DATE DEFAULT CURRENT_DATE
);

INSERT INTO employees.employees (name, role, department_id) VALUES
                                                                ('Alice Johnson', 'Senior Engineer', 1),
                                                                ('Bob Smith', 'Marketing Specialist', 2),
                                                                ('Charlie Brown', 'Accountant', 3);