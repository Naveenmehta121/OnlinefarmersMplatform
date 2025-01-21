# Krishipath - Farmers Online Platform

Krishipath is a Java-based web application designed to connect farmers, buyers, and suppliers. It leverages JSP, Servlets, and an SQL database to streamline agricultural trade, ensuring fair pricing and accessibility. The platform runs on Apache Tomcat and is built using Maven for efficient project management.

---

## **Features**
- **Farmer-to-Buyer Connectivity:** Direct trade for fair pricing.
- **Product Listings:** Buy and sell agricultural products, tools, and services.
- **Secure Transactions:** Reliable and secure payment processing.
- **Logistics Management:** Integrated delivery and tracking.
- **Educational Resources:** Farming tips and market insights.

---

## **Technologies Used**
- **Backend:** Java (JSP and Servlets)
- **Frontend:** HTML, CSS, JavaScript (JSP for dynamic views)
- **Build Tool:** Maven
- **Server:** Apache Tomcat
- **Database:** MySQL
- **IDE Recommended:** IntelliJ IDEA / Eclipse

---

## **Setup Instructions**

### Prerequisites
1. **Java Development Kit (JDK):** Version 8 or higher.
2. **Apache Maven:** Installed and configured.
3. **Apache Tomcat Server:** Version 9.x or higher.
4. **MySQL Server:** Installed and running.

### Steps
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/krishipath.git
   cd krishipath
   ```

2. **Set Up the Database:**
   - Create a MySQL database (e.g., `krishipath_db`).
   - Execute the SQL scripts located in `/sql` to create tables and seed data.

3. **Configure Database Connection:**
   - Update database credentials in `src/main/resources/db-config.properties`:
     ```properties
     db.url=jdbc:mysql://localhost:3306/krishipath_db
     db.user=root
     db.password=yourpassword
     ```

4. **Build the Project:**
   ```bash
   mvn clean install
   ```

5. **Deploy on Tomcat:**
   - Copy the generated `.war` file from `target/` to your Tomcat server's `webapps` directory.
   - Start the Tomcat server.

6. **Access the Application:**
   - Open your browser and navigate to:  
     `http://localhost:8080/krishipath`

---

## **Folder Structure**
```plaintext
krishipath/
├── src/
│   ├── main/
│   │   ├── java/          # Java source files (Servlets, Services, etc.)
│   │   ├── webapp/        # JSP files and static resources (CSS, JS)
│   │   └── resources/     # Configuration files (e.g., db-config.properties)
│   ├── test/              # Unit tests
├── pom.xml                # Maven build file
├── README.md              # Project documentation
└── sql/                   # SQL scripts for database setup
```

---

## **Contributing**
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

---

## **License**
This project is licensed under the [MIT License](LICENSE).

---

## **Contact**
For any inquiries or support, please reach out to naveennmehta@gmail.com
