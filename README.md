# DB-assignment
Oracle assignment - DB
This Oracle Pl/Sql assignment has list of coding activities for below mentioned Business Use case.
 Time to complete the below assignment is 6-8 hr.
Business Use case:
SuperValueStore is a global company that owns an online platform for selling products in different categories like Mobile, Camera, Photo & Accessories, Monitor, Chargers, Batteries & Power Supplies Cable, Card Readers, Cleaners, Computer Hardware & Software, Earphone & Headphone, Accessories and other electronic products and accessories. 
The company has developed a RDBMS database schema for managing this value store.
The product information such as name, description standard cost, list price, and product line. The cost is saved in USD.
It also tracks the inventory information for all products including warehouses where products are available. 
As the company operates globally, it has warehouses in various locations around the world like India, China, USA, UK, Germany, France, Singapore.
The company records all customer information including name, address, and website.
Each customer has at least one contact person with detailed information including name, email, and phone. 
Whenever a customer does a purchase, a sales order is created in the database with the pending status.
When the company ships the order, the order status is updated with shipped. 
When the order is delivered, the order status is updated with completed.
In case the customer cancels an order, the order status becomes canceled.
In addition to the sales information, the employee data is recorded with some basic information such as name, email, phone, job title, manager, and hire date.






The entities in company database with their description: 
Entities 	Description 
CONTACTS	This entity stores contact person information of customers
COUNTRIES	This entity stores country information
CUSTOMERS	This entity stores customer information 
EMPLOYEES	This entity stores employee information
INVENTORIES	This entity stores inventory information of products	
LOCATIONS	This entity stores locations of warehouses managed by the company 
ORDERS	This entity stores order information placed by customer 
ORDERITEMS	This entity stores order break up details order line items
PRODUCTCATEGORIES	This entity stores different product categories managed by the company
	
PRODUCTS	This entity stores product information hosted by the company
REGIONS	This entity stores  regions information where the company operates
WAREHOUSES	This entity stores warehouses information managed by the company 
DEPARTMENT	This entity stores department information of  the company 

Entities Fields level details: 
Regions:  regionid,   regionname (like Asia, Europe etc.)
Countries: countryid,   countryname, region
Locations: locationid, address, postal code, city , state ,country             
Warehouses:   warehouseid, warehousename, location
Employees: employeeid ,firstname ,lastname,email , phone,hiredate,dob,salary, manager,designation,department
Product category: categoryid, categoryname 
Products: productid, productname, description, standardcost, listprice, category     
Customers: customerid, name, address, website, Facebook, Twitter, WhatsApp
Contacts: contactid, firstname, lastname, email, phone, customerid
Orders: orderid, customerid, status, salesmanid, orderdate, orderdate
Order items: orderid, itemid, productid, quantity, unitprice, inventories productid, warehouseid, quantity	
Department : deptid , departmentname , location
		
		
		
	
		
			
Prerequisite: 
The Candidate has local environment setup of RDBMS 
Oracle PL/Sql Activity Details 
We need to create a database store, which stores the data of above entities.
Please perform following design and coding activities for Online Product Store Database Schema (onlinestoredb).Please write the sql script and save it in the file name mentioned in each activities.
Create a new schema onlinestoredb in schema.sql
Create a new user admin for onlinestoredb schema with full access in usersetup.sql
Create a new application user for onlinestoredb schema with DML access in usersetup.sql
Grant privileges for the new  user and admin user on the schema in usersetup.sql
Create the Entity Relationship Diagram for the schema and save it as ERD.jpg
Perform data normalization to 3NF form  and save it as ERD3NF.jpg
Create database objects for above entities like tables ,views , synonyms,index,constraints etc. in ddl.sql 
Define mandatary and optional fields and implement mandatory , default  constraints in ddl.sql
Define primary key , foreign key  constraints in ddl.sql
Define referential integrity constraint in ddl.sql
Create PL/SQL anonymous blocks, procedures, functions and triggers to perform create ,read, update and delete operations for above entities in ddl.sql
Create sql to load the data in above tables. Each table to have min 10 records in it in data.sql
Create views to create reports for products most  sold in different countries in last 7days in data.sql in reports.sql
Create views to create reports for customer who placed maximum orders in different countries in last 7days in reports.sql
Create audit tables for the above schema in ddl.sql. 
Capture audit for the change in master and transaction tables using datable triggers in ddl.sql.
Create the backup tables for above schema in backup.sql.
Write sqls to remove all the tables from schema in drop.sql.
Create a data export script for exporting tables from this schema in exports.sql
Write script determine all the database objects created in the schema allobjects.sql

Please create the scripts and output results in git hub and share the link.
