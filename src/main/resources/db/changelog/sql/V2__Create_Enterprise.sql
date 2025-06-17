CREATE TABLE enterprise.companies (
                                      id SERIAL PRIMARY KEY,
                                      name VARCHAR(100) UNIQUE NOT NULL,
                                      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO enterprise.companies (name) VALUES
                                            ('Phantom Corp'),
                                            ('HR Solutions Inc'),
                                            ('Future Workforce Ltd');