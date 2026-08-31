# E-Commerce Order Management Database System

## Week 1 – Requirement Analysis and Customer Database Module

### 1. Project Description

This project is an **E-Commerce Order Management Database System**.
It is designed to store and manage important information about customers, products, orders, payments, sellers, and reviews.

In Week 1, the main focus is on **requirement analysis and the Customer Database Module**.

### 2. Business Requirements

The e-commerce system needs to:

* Store customer information.
* Add new customers.
* Update customer details.
* Delete customer records.
* View customer information.
* Maintain customer data safely using database constraints.
* Prepare the database for future modules such as products, orders, and payments.

### 3. Main Entities

The main entities identified for the complete system are:

* **Customer** – Stores customer details.
* **Product** – Stores product information.
* **Order** – Stores customer orders.
* **Payment** – Stores payment details.
* **Seller** – Stores seller information.
* **Review** – Stores customer reviews and ratings.

### 4. Customer Table

The Customer table stores the basic information of each customer.

| Attribute   | Description               |
| ----------- | ------------------------- |
| Customer_ID | Unique ID of the customer |
| Name        | Customer name             |
| Email       | Customer email address    |
| Phone       | Customer phone number     |
| Address     | Customer address          |
| City        | Customer city             |

### 5. Database Constraints

The following constraints are used to maintain correct data:

* **PRIMARY KEY** – Gives each customer a unique ID.
* **NOT NULL** – Prevents important fields from being empty.
* **UNIQUE** – Prevents duplicate email addresses.
* **CHECK** – Ensures valid values are entered.
* **DEFAULT** – Provides a default value when required.

### 6. CRUD Operations

CRUD operations are performed on the Customer table.

* **Create** – Insert a new customer.
* **Read** – Display customer records.
* **Update** – Modify customer information.
* **Delete** – Remove a customer record.

### 7. Technologies Used

* SQL
* MySQL
* MySQL Workbench

### 8. Week 1 Work Completed

The following tasks were completed:

1. Analyzed the e-commerce business requirements.
2. Identified the main entities.
3. Designed the Customer table.
4. Created the database.
5. Added constraints to the Customer table.
6. Inserted customer records.
7. Performed CRUD operations.

### 9. Conclusion

The Customer Database Module provides a basic structure for managing customer information in an e-commerce system. The database can be expanded in future weeks by adding **Product, Order, Payment, Seller, and Review** modules.
