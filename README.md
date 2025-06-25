# Liquibase Project

## 🚀 Description

This project demonstrates the use of **Liquibase** for versioning and automating database migrations in Java applications. It streamlines the management of database schema changes, ensuring traceability, safety, and easy rollbacks.

---

## 🧰 Technologies Used

- **Java 21**
- **Spring Boot 3.5**
- **Liquibase**
- **PostgreSQL** (production database)
- **H2** (in-memory database for tests)
- **Spring Data JPA**
- **Spring Web**
- **Maven**
- **Docker** (optional, for database containerization)

---

## 🎯 Benefits

- **Database Versioning:** Full control over database changes, with history and rollback capability.
- **Automation:** Automatic migrations when starting the application or via command line.
- **Collaboration:** Facilitates teamwork, avoiding SQL script conflicts.
- **Auditing:** Detailed record of all applied changes.

---

## 🛠️ Prerequisites

- Java 21 (or the version specified in your project)
- Maven 3.6+ (or use the Maven Wrapper: `./mvnw`)
- Docker (optional, if you use containers for the database)
- Compatible database (e.g., PostgreSQL, MySQL, etc.)

---

## ⚡ Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd liquibase
   ```

2. **Configure the database:**
   - Edit the `src/main/resources/application.properties` and/or `src/main/resources/liquibase.properties` file with your database credentials.
   - Example configuration:
     ```properties
     spring.datasource.url=jdbc:postgresql://localhost:5432/yourdb
     spring.datasource.username=username
     spring.datasource.password=password
     ```

3. **(Optional) Start the database with Docker:**
   - If there is a `docker-compose.yml`, run:
     ```bash
     docker-compose up -d
     ```

4. **Build and run migrations:**
   ```bash
   ./mvnw clean install
   ./mvnw spring-boot:run
   ```
   Or, to run only Liquibase migrations:
   ```bash
   ./mvnw liquibase:update
   ```

---

## 📁 Project Structure

```
liquibase/
├── src/main/resources/db/changelog/      # Liquibase changelogs (YAML/SQL)
├── src/main/resources/liquibase.properties # Liquibase configuration
├── src/main/java/project/main/           # Main source code
├── docker-compose.yml                    # (Optional) Database via Docker
```

---

## 💡 Usage Tips

- Always create a new changelog file for each relevant database change.
- Use descriptive names for files, such as `V2__Create_Enterprise.sql`.
- Test migrations in a local environment before applying them to production.
- Use the command `liquibase status` to see which migrations have not yet been applied.

---

## 🧪 Testing

To run automated tests:
```bash
./mvnw test
```

---

## 🤝 Contributing

1. Fork this repository.
2. Create a branch for your feature (`git checkout -b feature/feature-name`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/feature-name`).
5. Open a Pull Request.

---

## 📄 License

This project is licensed under the MIT License.