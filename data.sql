-- Login as onlinestoredb & run below

-- Regions data entry
INSERT INTO REGIONS (REGIONID, REGIONNAME) VALUES (1,'AMERICAS');
INSERT INTO REGIONS (REGIONID, REGIONNAME) VALUES (2,'APAC');
INSERT INTO REGIONS (REGIONID, REGIONNAME) VALUES (3,'EUROPE');
INSERT INTO REGIONS (REGIONID, REGIONNAME) VALUES (4,'MIDDLE EAST AND AFRICA');
COMMIT;


 
 
 -- Countries data entry
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (1,'INDIA',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'APAC'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (2,'CHINA',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'APAC'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (3,'SINGAPORE',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'APAC'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (4,'MALAYSIA',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'APAC'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (5,'US',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'AMERICAS'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (6,'CANADA',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'AMERICAS'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (7,'UK',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'EUROPE'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (8,'FRANCE',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'EUROPE'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (9,'SAUDI ARAB',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'MIDDLE EAST AND AFRICA'));
INSERT INTO COUNTRIES (COUNTRYID, COUNTRYNAME, REGION) VALUES (10,'SOUTH AFRICA',(SELECT REGIONID FROM REGIONS WHERE REGIONNAME = 'MIDDLE EAST AND AFRICA'));
COMMIT;


 -- Locations data entry
INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (1, 'Addr line-1, Kharadi', '411014', 'PUNE', 'MAHARASHTRA', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'INDIA'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (2, 'Addr line-1, BEIJING', '12345', 'BEIJING', 'BEIJING', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'CHINA'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (3, 'Addr line-1, SINGAPORE', '98765', 'SINGAPORE', 'SINGAPORE', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'SINGAPORE'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (4, 'Addr line-1, MALAYSIA', '12312', 'MALAYSIA', 'MALAYSIA', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'MALAYSIA'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (5, 'Addr line-1, US', '98765', 'NEW YORK', 'US STATE', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'US'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (6, 'Addr line-1, CANADA, US', '98765', 'CANADA CITY', 'CANADA STATE', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'CANADA'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (7, 'Addr line-1, US', '98765', 'LONDON', 'UK', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'UK'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (8, 'Addr line-1, FRANCE', '98765', 'FRANCE', 'FRANCE', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'FRANCE'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (9, 'Addr line-1, UAE', '09876', 'UAE', 'UAE', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'SAUDI ARAB'));

INSERT INTO LOCATIONS (LOCATIONID, ADDRESS, POSTALCODE, CITY, STATE, COUNTRY )
VALUES (10, 'Addr line-1, CAPETOWN', '98765', 'CAPETOWN', 'CAPETOWN', (SELECT COUNTRYID FROM COUNTRIES WHERE COUNTRYNAME = 'SOUTH AFRICA'));

COMMIT;




 -- Warehouse data entry
INSERT INTO WAREHOUSES (WAREHOUSEID, WAREHOUSENAME, LOCATION) VALUES (1,'WAREHOUSE-India', 1);
INSERT INTO WAREHOUSES (WAREHOUSEID, WAREHOUSENAME, LOCATION) VALUES (2,'WAREHOUSE-US', 5);
INSERT INTO WAREHOUSES (WAREHOUSEID, WAREHOUSENAME, LOCATION) VALUES (3,'WAREHOUSE-EUROPE', 8);
COMMIT;



-- Department data entry
INSERT INTO DEPARTMENT (DEPTID, DEPTNAME, LOCATION) VALUES (1, 'Dept-Pune-India', 1);
INSERT INTO DEPARTMENT (DEPTID, DEPTNAME, LOCATION) VALUES (2, 'Dept-Bejing-China', 2);
INSERT INTO DEPARTMENT (DEPTID, DEPTNAME, LOCATION) VALUES (3, 'Dept-New york-US', 5);
INSERT INTO DEPARTMENT (DEPTID, DEPTNAME, LOCATION) VALUES (4, 'Dept-London-UK', 7);
COMMIT;



-- Employees data entry
INSERT INTO EMPLOYEES (EMPLOYEEID,FIRSTNAME,LASTNAME,EMAIL,PHONE,HIREDATE,DOB,SALARY,MANAGER,DESIGNATION,DEPARTMENT)
VALUES (101, 'NAME-1', 'SURNAME-1', 'name1@gmail.com' ,'9876543210', '01-Jan-2021', '01-Jan-1980', 10000, NULL, 'Customer advisor', 1  );

INSERT INTO EMPLOYEES (EMPLOYEEID,FIRSTNAME,LASTNAME,EMAIL,PHONE,HIREDATE,DOB,SALARY,MANAGER,DESIGNATION,DEPARTMENT)
VALUES (102, 'NAME-2', 'SURNAME-2', 'name2@gmail.com' ,'1234567890', '01-Jan-2020', '01-Dec-1980', 20000, NULL, 'Customer advisor', 2  );

INSERT INTO EMPLOYEES (EMPLOYEEID,FIRSTNAME,LASTNAME,EMAIL,PHONE,HIREDATE,DOB,SALARY,MANAGER,DESIGNATION,DEPARTMENT)
VALUES (103, 'NAME-3', 'SURNAME-3', 'name3@gmail.com' ,'6543298765', '01-Jan-2022', '01-Nov-1980', 30000, NULL, 'Customer advisor', 3  );

INSERT INTO EMPLOYEES (EMPLOYEEID,FIRSTNAME,LASTNAME,EMAIL,PHONE,HIREDATE,DOB,SALARY,MANAGER,DESIGNATION,DEPARTMENT)
VALUES (104, 'NAME-4', 'SURNAME-4', 'name4@gmail.com' ,'1234509876', '01-Jan-2019', '01-Oct-1980', 40000, NULL, 'Customer advisor', 4  );

COMMIT;



-- PRODUCT_CATEGORY data entry
INSERT INTO PRODUCT_CATEGORY (CATEGORYID, CATEGORYNAME) VALUES (1,'MOBILE');
INSERT INTO PRODUCT_CATEGORY (CATEGORYID, CATEGORYNAME) VALUES (2,'CAMERA');
INSERT INTO PRODUCT_CATEGORY (CATEGORYID, CATEGORYNAME) VALUES (3,'MONITOR');
INSERT INTO PRODUCT_CATEGORY (CATEGORYID, CATEGORYNAME) VALUES (4,'CHARGER');
INSERT INTO PRODUCT_CATEGORY (CATEGORYID, CATEGORYNAME) VALUES (5,'EARPHONE');
COMMIT;




INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (1, 'IPHONE-13', 'IPHONE-13', 750, 900, 1 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (2, 'IPHONE-10', 'IPHONE-10', 600, 700, 1 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (3, 'MI-A2',  'MI-A2', 200, 250, 1 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (4, 'SAMSUNG', 'Galaxy', 250, 300, 1 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (5, 'OPPO', 'Reno-7', 300, 400, 1 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (6, 'ASUS', 'Zenfone', 300, 350, 1 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (7, 'CANON', 'Canon camera', 400, 450, 2 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (8, 'IBM', 'IBM monitor', 100, 125, 3 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (9, 'HP', 'HP charger', 30, 35, 4 );
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,DESCRIPTION,STANDARDCOST,LISTPRICE,CATEGORY) VALUES (10, 'BOAT', 'BOAT earphone', 40, 50, 5 );

COMMIT;




INSERT INTO ORDER_STATUS (STATUSID, STATUS) VALUES (1,'PENDING');
INSERT INTO ORDER_STATUS (STATUSID, STATUS) VALUES (2,'SHIPPED');
INSERT INTO ORDER_STATUS (STATUSID, STATUS) VALUES (3,'COMPLETED');
INSERT INTO ORDER_STATUS (STATUSID, STATUS) VALUES (4,'CANCELLED');
COMMIT;




INSERT INTO CUSTOMERS (CUSTOMERID,NAME,ADDRESS,WEBSITE,FACEBOOK,TWITTER,WHATSAPP)
VALUES (111, 'Customer-1', 'Address-1', NULL, NULL, NULL, '1234567890');

INSERT INTO CUSTOMERS (CUSTOMERID,NAME,ADDRESS,WEBSITE,FACEBOOK,TWITTER,WHATSAPP)
VALUES (222, 'Customer-2', 'Address-2', NULL, NULL, NULL, NULL);

INSERT INTO CUSTOMERS (CUSTOMERID,NAME,ADDRESS,WEBSITE,FACEBOOK,TWITTER,WHATSAPP)
VALUES (333, 'Customer-3', 'Address-3', NULL, NULL, NULL, '9876543210');

INSERT INTO CUSTOMERS (CUSTOMERID,NAME,ADDRESS,WEBSITE,FACEBOOK,TWITTER,WHATSAPP)
VALUES (444, 'Customer-4', 'Address-4', NULL, NULL, NULL, NULL);

INSERT INTO CUSTOMERS (CUSTOMERID,NAME,ADDRESS,WEBSITE,FACEBOOK,TWITTER,WHATSAPP)
VALUES (555, 'Customer-5', 'Address-5', NULL, NULL, NULL, '6543987612');

COMMIT;






INSERT INTO CONTACTS (CONTACTID,FIRSTNAME,LASTNAME,EMAIL,PHONE,CUSTOMERID) VALUES (1, 'Cus-1', 'surname-1', 'cus1@gmail.com', '9876512345', 111);
INSERT INTO CONTACTS (CONTACTID,FIRSTNAME,LASTNAME,EMAIL,PHONE,CUSTOMERID) VALUES (2, 'Cus-2', 'surname-2', 'cus2@gmail.com', '1236547891', 222);
INSERT INTO CONTACTS (CONTACTID,FIRSTNAME,LASTNAME,EMAIL,PHONE,CUSTOMERID) VALUES (3, 'Cus-3', 'surname-3', 'cus3@gmail.com', '8741236988', 333);
INSERT INTO CONTACTS (CONTACTID,FIRSTNAME,LASTNAME,EMAIL,PHONE,CUSTOMERID) VALUES (4, 'Cus-4', 'surname-4', 'cus4@gmail.com', '7412589631', 444);
INSERT INTO CONTACTS (CONTACTID,FIRSTNAME,LASTNAME,EMAIL,PHONE,CUSTOMERID) VALUES (5, 'Cus-5', 'surname-5', 'cus5@gmail.com', '7894561230', 555);
COMMIT;







INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (1,111, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'PENDING'),101, sysdate );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (2,111, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'SHIPPED'),101, sysdate-2 );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (3,111, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'COMPLETED'),102, sysdate-10 );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (4,111, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'CANCELLED'),102, sysdate-5 );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (5,222, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'PENDING'),103, sysdate-1 );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (6,222, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'COMPLETED'),103, sysdate-10 );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (7,333, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'PENDING'),104, sysdate );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (8,333, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'SHIPPED'),104, sysdate-3 );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (9,444, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'PENDING'),104, sysdate );

INSERT INTO ORDERS (ORDERID,CUSTOMERID,STATUS,SALESMANID,ORDERDATE)
VALUES (10,555, (SELECT STATUSID FROM ORDER_STATUS WHERE STATUS = 'PENDING'),104, sysdate-1 );

COMMIT;





INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (1,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-13'),100);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (2,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10'),50);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (3,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'MI-A2'),200);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (4,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'SAMSUNG'),300);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (5,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'OPPO'),400);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (6,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'ASUS'),100);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (7,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'CANON'),500);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (8,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IBM'),100);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (9,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'HP'),500);
INSERT INTO INVENTORY (INVENTORYID,PRODUCTID,QUANTITY) VALUES (10,(SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'BOAT'),500);
COMMIT;




INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(1,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-13'), 1, 900, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-13')),  1 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(1,2, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'BOAT'), 1, 50, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'BOAT')),  1 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(2,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'MI-A2'), 1, 250, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'MI-A2')),  2 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(3,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10'), 2, 250, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10')),  2 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(4,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'CANON'), 1, 500, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'CANON')),  3 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(5,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IBM'), 1, 125, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IBM')),  2 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(5,2, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10'), 1, 250, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10')),  2 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(6,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'CANON'), 1, 500, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'CANON')),  3 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(6,2, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10'), 2, 250, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IPHONE-10')),  3 );


INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(7,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IBM'), 1, 125, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'IBM')),  2 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(8,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'OPPO'), 1, 400, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'OPPO')),  1 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(9,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'ASUS'), 1, 350, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'ASUS')),  2 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(10,1, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'HP'), 1, 35, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'HP')),  3 );

INSERT INTO ORDER_ITEMS (ORDERID,ITEMID,PRODUCTID,QUANTITY,UNITPRICE,INVENTORYID,WAREHOUSEID)
VALUES(10,2, (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'BOAT'), 1, 50, 
(SELECT INVENTORYID FROM INVENTORY WHERE PRODUCTID = (SELECT PRODUCTID FROM PRODUCTS WHERE PRODUCTNAME = 'BOAT')),  3 );



COMMIT;













