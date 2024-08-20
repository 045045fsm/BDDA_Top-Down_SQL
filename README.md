# **TOP-DOWN APPROACH:** McDonald's Operational Database Design

This project involves the creation of a relational database structure for a hypothetical McDonald’s organization, utilizing a top-down approach. The database is designed to manage core operational data including orders, customers, employees, products, and store locations. The database structure is represented by an Entity-Relationship Diagram (ERD), which outlines the relationships between various entities essential for efficient management and data retrieval.

## Top-Down Approach

The top-down approach was adopted for designing the database structure. In this approach, we began by identifying the overall system requirements and key entities necessary for McDonald’s operations. These high-level entities include **Order, Customer, Employee, Product,** and **Store**. From these entities, we progressively broke down the system into more detailed components, such as attributes and relationships between entities. This methodology ensures that the design is comprehensive and aligned with the business needs, allowing for a clear mapping of real-world operations to the database.

## Entities and Relationships

### 1. **Order**
   - **Primary Key:** `OrderID`
   - **Attributes:**
     - `OrderDate`: The date when the order was placed.
     - `TotalAmount`: The total amount for the order.
     - `EmployeeID`: References the employee who handled the order.
     - `CustomerID`: References the customer who placed the order.
   - **Relationships:**
     - Linked to `OrderDetails`, `Employee`, and `Customer`.

### 2. **OrderDetails**
   - **Primary Key:** `OrderDetailsID`
   - **Attributes:**
     - `OrderID`: References the related order.
     - `ProductID`: References the product included in the order.
     - `Quantity`: The quantity of the product in the order.
   - **Relationships:**
     - Linked to `Order` and `Product`.

### 3. **Customer**
   - **Primary Key:** `CustomerID`
   - **Attributes:**
     - `CustomerName`: The name of the customer.
     - `CustomerPhone`: The customer's contact number.
   - **Relationships:**
     - Linked to `Order`.

### 4. **Employee**
   - **Primary Key:** `EmployeeID`
   - **Attributes:**
     - `FirstName`: The first name of the employee.
     - `LastName`: The last name of the employee.
     - `Position`: The role or position of the employee.
     - `Salary`: The salary of the employee.
     - `StoreID`: References the store where the employee works.
   - **Relationships:**
     - Linked to `Order` and `Store`.

### 5. **Product**
   - **Primary Key:** `ProductID`
   - **Attributes:**
     - `ProductName`: The name of the product.
     - `Price`: The price of the product.
     - `Category`: The category of the product (e.g., Burger, Drink, Dessert).
   - **Relationships:**
     - Linked to `OrderDetails`.

### 6. **Store**
   - **Primary Key:** `StoreID`
   - **Attributes:**
     - `StoreLocation`: The location of the store.
     - `ManagerID`: References the employee who manages the store.
   - **Relationships:**
     - Linked to `Employee`.

## Usage

This database structure provides a comprehensive framework to manage the operations of a fast-food chain like McDonald’s. It supports tracking of orders, products, employees, customers, and store locations, enabling efficient business operations and decision-making.

## Conclusion

This database structure, designed using a top-down approach, represents a scalable and robust solution for managing a fast-food chain’s data. It ensures data integrity, efficient relationship management, and supports the day-to-day operations of the business.