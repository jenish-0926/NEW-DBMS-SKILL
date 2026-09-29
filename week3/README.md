## WEEK 3 – SELLER AND INVENTORY MANAGEMENT SYSTEM

## PROJECT OVERVIEW

The **Seller and Inventory Management System** is a simple SQL project used to manage seller and inventory details. It includes table creation, relationships, data insertion, CRUD operations, and inventory analysis.

## OBJECTIVES

* Create Seller and Inventory tables.
* Store seller and product details.
* Establish a relationship between Seller and Inventory.
* Perform CRUD operations.
* Analyze available and out-of-stock products.

## TABLES

### SELLER TABLE

Stores seller information such as:

* Seller ID
* Seller Name
* Email
* Phone

### INVENTORY TABLE

Stores product information such as:

* Inventory ID
* Product Name
* Quantity
* Price
* Seller ID

## DATABASE OPERATIONS

The project uses:

* **INSERT** – Add records
* **SELECT** – View records
* **UPDATE** – Change records
* **DELETE** – Remove records
* **JOIN** – Connect Seller and Inventory data

## INVENTORY ANALYSIS

The project analyzes inventory to:

* Find available products.
* Find out-of-stock products.
* Find the highest stock quantity.
* Calculate average quantity.
* Find seller-wise total products and quantity.

## ER RELATIONSHIP

One seller can have many inventory records.

**Seller → Inventory (1 : Many)**

The `seller_id` is used as a foreign key to connect the two tables.

## CONCLUSION

This project provides a simple way to manage sellers and inventory using SQL. It demonstrates database tables, relationships, CRUD operations, and basic inventory analysis.
