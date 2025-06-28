# 💳 E-Loan-Corner

*E-Loan-Corner* is a web-based loan management system built using *Spring Boot* and *JSP*. The application enables users to apply for loans and view their loan status, while providing admins tools to review and manage loan applications.

---

## 📌 Features

- 🧾 User registration and login
- 📤 Loan application submission
- 🗂️ Admin panel to review and approve/reject loan applications
- 📄 View loan status
- 📃 JSP-based frontend served from Spring Boot backend
- 💡 MVC architecture

---

## 🛠️ Tech Stack

| Layer         | Technology        |
|---------------|-------------------|
| Backend       | Spring Boot       |
| Frontend      | JSP, HTML, CSS, Bootstrap |
| Database      | (MySQL) |
| Build Tool    | Maven             |

---

## 📁 Project Structure

E-Loan-Corner/
├── src/
│   ├── main/
│   │   ├── java/                # Java source code (controllers, services, models)
│   │   ├── resources/           # Application config (e.g., application.properties)
│   │   └── webapp/              # Frontend (JSP files, CSS, JS)
│   └── test/                    # Unit and integration tests
├── pom.xml                      # Maven build configuration
├── README.md                    # Project documentation

---

## 🚀 How to Run Locally

### 📌 Prerequisites

- Java 8 or above
- Maven installed
- (Optional) MySQL or H2 database setup

### 🔧 Steps

1. *Clone the repository:*
   ```bash
   git clone https://github.com/Poulami-98/E-Loan-Corner.git
   cd E-Loan-Corner


2. Configure the Database:

Update src/main/resources/application.properties with your DB credentials.

If using MySQL, create the required schema manually or use schema.sql if provided.



3. Run the application:

mvn spring-boot:run


4. Access the app:

Open browser and go to:
http://localhost:8080/login
