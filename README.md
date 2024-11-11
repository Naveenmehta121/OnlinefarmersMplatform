# Online Farmers Market Platform

## Overview
The **Online Farmers Market Platform** is a web application designed to facilitate transactions between local farmers and consumers through an online marketplace. Farmers can register to list their fresh produce, while customers can browse, search for products, and place orders. Built using **Java**, **Maven**, **Servlets**, and **JDBC**, this platform is connected to a **MySQL** database to store user, product, and order information.

## Features
- **Farmer Registration**: Farmers can sign up to list their products and manage inventory.
- **Product Management**: Farmers can add, update, or remove products from their listings.
- **Customer Registration**: Customers can create accounts to browse products, search for specific items, and make purchases.
- **Order Management**: Customers can view their orders, and farmers can view the orders placed for their products.
- **Admin Panel**: Admins can manage users, products, and orders from a dedicated interface.

## Technologies Used
- **Java**: The primary programming language for business logic and backend operations.
- **Maven**: Used for project management, dependency handling, and building the application.
- **Servlets**: Java servlets handle HTTP requests, manage user sessions, and interact with the backend.
- **JDBC**: Java Database Connectivity (JDBC) is used to communicate with the MySQL database.
- **MySQL**: Relational database used to store user, product, and order information.
- **HTML/CSS/JavaScript**: The frontend is built using standard web technologies for user interface.

## Project Structure
The project is structured in a way that supports modular development, with separate folders for the web interface, backend logic, database access objects, and utility classes. The main components include:
- **`src/main/java/com/farmersmarket/`**: Contains all Java classes for the business logic and database interactions.
- **`src/main/webapp/`**: Contains JSP files and web resources (e.g., `index.jsp`, `login.jsp`, `product-list.jsp`).
- **`src/main/resources/`**: Configuration files such as `dbconfig.properties` for database connections.

## Database Setup
1. Create a MySQL database to store the application data, such as users, products, and orders.
2. Update the database connection details in the `dbconfig.properties` file located in `src/main/resources/`.
3. Import the provided SQL schema into your MySQL database.

## Getting Started
To set up and run the project locally:
1. **Clone the repository** to your local machine.
2. **Install Java JDK 8+** and **Maven** on your system.
3. Set up a **MySQL** database with the appropriate schema.
4. Update the `dbconfig.properties` file with your MySQL connection credentials.
5. Build the project with Maven using the following command:
   ```bash
   mvn clean install
   
### Key Sections:
1. **License**: Specifies that the project is under the MIT License. The full text of the license can be added in a `LICENSE` file in your repository.
2. **Acknowledgments**: Recognizes the technologies and tools used in the project. It also gives credit to the open-source community for providing the resources that helped in building the platform.



