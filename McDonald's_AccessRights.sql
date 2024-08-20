-- ACCESS RIGHTS:

CREATE ROLE 'admin';
CREATE ROLE 'manager';
CREATE ROLE 'staff';

-- 1. ADMIN: 
-- CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_password';  
-- GRANT ALL PRIVILEGES ON McDonaldsDB.* to 'adim'@'localhost'; 

-- The Admin has full access to all tables and can manage the database, including creating, modifying, and deleting tables, as well as managing other users.

-- 2. MANAGER: 
-- CREATE USER 'manager'@'localhost' IDENTIFIED BY 'manager_ashok'; 
-- GRANT SELECT, INSERT, UPDATE ON McDonaldsDB.Store to 'manager'@'localhost';
-- GRANT SELECT, INSERT, UPDATE ON  McDonaldsDB.Employee to 'manager'@'localhost';
-- GRANT SELECT, INSERT, UPDATE ON  McDonaldsDB.Order to 'manager'@'localhost'; 
-- GRANT SELECT, INSERT, UPDATE ON  McDonaldsDB.OrderDetails to 'manager'@'localhost';

-- The Manager has access to view and modify data in the Store, Employee, Order, and OrderDetails tables but cannot create or delete tables. 

-- 3. STAFF: 
-- CREATE USER 'staff'@'localhost' IDENTIFIED BY 'staff'; 
-- GRANT SELECT (OrderDate, TotalAmount) ON McDonaldsDB.`Order` TO 'staff'@'localhost';

-- The Staff has access to only view data OrderDate and TotalAmount from the Oreder Table and cannot access other tables.
