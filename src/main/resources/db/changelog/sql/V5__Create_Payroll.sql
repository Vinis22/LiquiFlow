CREATE TABLE payroll.salaries (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees.employees(id),
    base_salary DECIMAL(10, 2) NOT NULL,
    bonus DECIMAL(10, 2) DEFAULT 0,
    total_salary DECIMAL(10, 2) GENERATED ALWAYS AS (base_salary + bonus) STORED
);

INSERT INTO payroll.salaries (employee_id, base_salary, bonus) VALUES
(1, 8000.00, 1000.00),
(2, 6000.00, 500.00),
(3, 7000.00, 750.00);