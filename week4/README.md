# Week 4 – Order Management System

## About the Project

This project is an **Order Management System** for an e-commerce company.

The system helps to manage:

* Customers
* Products
* Inventory
* Customer orders
* Products purchased in each order

The project uses **MySQL** to create tables, store data, and perform operations.

## Tables Used

The project contains the following tables:

1. **Customer** – Stores customer information.
2. **Product** – Stores product information.
3. **Inventory** – Stores product stock information.
4. **Orders** – Stores information about customer orders.
5. **Order_Details** – Stores the products and quantities in each order.

## Table Relationships

* One customer can place many orders.
* One order belongs to one customer.
* One order can contain many products.
* One product can be included in many orders.
* `Order_Details` connects the `Orders` and `Product` tables.
* Product and Inventory tables are connected to manage stock.

## Main Operations

The project performs the following operations:

### 1. Create Tables

Tables are created using SQL with:

* Primary Key
* Foreign Key
* NOT NULL
* CHECK constraints

### 2. Insert Orders

New customer orders and purchased products can be added to the database.

### 3. Update Orders

Order information can be changed.

For example:

* Pending → Shipped
* Shipped → Delivered
* Change product quantity

### 4. Delete Orders

Cancelled orders can be removed from the database.

### 5. Calculate Order Amount

The total order amount is calculated using the product price and quantity.

**Formula:**

```text
Total = Price × Quantity
```

For multiple products:

```text
Total Order Amount = Sum of all Product Amounts
```

## Reports

The project also generates useful reports such as:

* Customer order history
* Product-wise order report
* Total quantity of products sold
* Total spending by each customer
* Average order value
* Total sales

## Example

Customer **Rahul** places an order:

| Product | Quantity |   Price |
| ------- | -------: | ------: |
| Laptop  |        1 | ₹55,000 |
| Mouse   |        2 |    ₹800 |

Total order amount:

```text
55,000 + (800 × 2) = ₹56,600
```

## Technologies Used

* **MySQL**
* **SQL**

## Conclusion

This project provides a simple way to manage customer orders in an e-commerce system. It connects customers, products, inventory, and orders using database relationships and SQL queries.
