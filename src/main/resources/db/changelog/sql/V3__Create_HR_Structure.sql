CREATE TABLE human_resources.departments (
                                             id SERIAL PRIMARY KEY,
                                             name VARCHAR(50) NOT NULL,
                                             company_id INT REFERENCES enterprise.companies(id)
);

CREATE TABLE human_resources.managers (
                                          id SERIAL PRIMARY KEY,
                                          user_id INT NOT NULL,
                                          department_id INT REFERENCES human_resources.departments(id),
                                          level INT CHECK (level BETWEEN 1 AND 5)
);

INSERT INTO human_resources.departments (name, company_id) VALUES
                                                               ('Engineering', 1),
                                                               ('Marketing', 1),
                                                               ('Finance', 2);